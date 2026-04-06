
PROCESSING_SUBSYSTEM_DEF(HiveEchoes)
	name = "Hivenet Echoes"
	flags = SS_BACKGROUND


#define GETPROJECTION "<i><span class='game say'>Hivenet, <span class='name'>a [pick("Faint", "Distant", "Fading", "Fleeting", "Drifting", "Low", "Weak", "Far")] Echo</span> projects <span class='vaurca'>[pick(echo_projections)]</span></span></i>"
#define ECHOMSG(input) "<i><span class='game say'>Hivenet, <span class='name'>a [pick("Faint", "Distant", "Fading", "Fleeting", "Drifting", "Low", "Weak", "Far")] Echo</span> broadcasts, <span class='vaurca'>\"[pick(input)]\"</span></span></i>"
#define CHECK_VALID_SOCKET if(player.internal_organs_by_name[BP_NEURAL_SOCKET] && !within_jamming_range(player) && (GLOB.all_languages[LANGUAGE_VAURCA] in player.languages))
#define CHECKPLAYER for(var/mob/living/carbon/human/player in GLOB.player_list)
///////////
/* OUTLINE: Echoes are on by default through "catchecho", some sectors (3 atm) have it off automatically at roundstart. The proc manages most things:
It decides the broadcast topic, if they'll be joined, sets starter & response strings with the switch block, then sends both.
Broadcast & projections have different timers to not feel synced up, 180-300s for former, 240-480s for latter.
HandleEcho() manages sending projections & both timers, it's also the integral caller that triggers this subsystem.
All Vaurcae are meant to get the same echoes in gameplay to also prompt roleplay.

ONLY VAURCAE can catch echoes, BUT NBT2 could allow for partial-catching by non-Vaurcae from tech progression. In that future,
Non-Vaurcae should catch broadcasts as garbled messages, and not even receive projections (too complex signals + pheromones).
This has been talked with a lore writer as of April 2026.
*////////////
/datum/controller/subsystem/processing/HiveEchoes/fire(resumed)


/mob/living/carbon/human/proc/HandleEcho() //Gets called at mob/living/carbon/human/Life(seconds_per_tick, times_fired). No vaurcae = no echoes

//120 out-of-context, projected sensations. The wackier projections are probably from the Aether
	var/static/list/echo_projections = list(
		"affection", "sarcasm", "annoyance", "confidence", "gratitude", "excitement", "confusion", "wonder", "interest",
		"disappointment", "anger", "curiosity", "pain", "fear", "caution", "reverence", "disgust","hatred", "a surge of encrypted data",
		"an enormous surge of encrypted data, surging out into wider Hivenet", "mischief", "pleasure", "pride", "contempt",
		"complacency", "an apology", "an epiphany", "nostalgia", "appreciation", "thanks", "acceptance", "anticipation",
		"the chewing of k'ois", "the grinding of k'ois", "the grinding of phoron rock candy", "the fizziness of toothpaste",
		"a strong intoxication", "an energetic soda kick", "rummaging through piles", "carrying [prob(50)?"heavy crates":"people"]", "pushing boxes",
		"dragging people", "moving [prob(50)?"machinery":"something heavy"]", "frantic searching", "looting", "hiding", "stealthiness", "leaping", "sprinting",
		"climbing", "falling", "grabbing", "twisting something", "bending something", "clawing", "scraping", "biting", "exhaustion", "tiredness",
		"persistence","resilience", "longing", "chewing of V'krexi Snax taffy", "revolting, shameful trophallaxis", "intense warmth", "chills",
		"embarrassment", "satisfaction", "being crushed", "being cut", "being drilled into", "k'ois clotting wounds", "being sprayed",
		"Zo'rane might", "C'thuric planning", "K'laxan ingenuity", "being blinded", "overwhelming light", "smoking a cigarette",
		"inhaling wulumunusha, the subsequent drop in vocal functions and increased saturation in vision",
		"the sweet, stringy taste of Koko reed", "the high after huffing Xu'Xi Gas", "the chewing of cooked beef",
		"[prob(50)?"chewing":"the biting"] of vegetables", "the taste of boiled cabbages", "feasting on fast food", "eating fried fish",
		"enjoying potato fries", "[prob(50)?"biting":"eating"] a hard cookie", "feasting on soft cake", "the rhythmic chewing of a corn cob",
		"chewing into fish", "tasting algae", "tearing into crustacean", "pinching apart the insides of a clam",
		"the texture of a roasted diona nymph", "the taste of a [prob(50)?"cooked":"bland"] vaurca carapace", "eating cooked chicken",
		"enjoying mashed potatoes", "tasting a rich gravy coating", "being sprinkled with sauce", "[prob(50)?"munching":"tearing into"] raw space carp", "chewing into wood",
		"eating rock", "slurping sweet metal and battery acid", "guzzling welding fuel", "incredible spiciness", "drinking warm milk",
		"devouring a monkey [prob(50)?"bit by bit":"from skin to bone"]", "touching a beating heart", "part of a clip of [prob(50)?"Swimstars":"a show"]", "guzzling Zo'rane fire",
		"[prob(50)?"swiftly":"remorselessly"] [prob(50)?"executing":"killing"] something", "hatching [prob(50)?"again":"once more"]", "being slapped", "flexing headtails", "a ping into Hivenet",
		"chewing gum", "flexing [prob(50)?"skin":"muscle"] to smile", "a minty exhale"
		)
	var/static/last_projectionEcho = 0
	var/static/last_broadcastEcho = 0

	if(world.time >= (last_broadcastEcho + rand(180,300) SECONDS))
		GetBroadcast()
		last_broadcastEcho = world.time
	if((SSatlas.current_sector.catchecho == TRUE) && world.time >= (last_projectionEcho + rand(240,480) SECONDS))
		var/projection = GETPROJECTION
		CHECKPLAYER
			if(isvaurca(player))
				CHECK_VALID_SOCKET
					to_chat(player, projection)
					last_projectionEcho = world.time
		for(var/mob/G in GLOB.player_list)
			if(isghost(G))
				to_chat(G, projection)

/*
Vaurcae normally always hear faint echoes of distant Hivenet transmissions. These massive pools & ternary ops are to simulate the ENTIRETY of Hivenet.
The template is two echo broadcasts to simulate two vaurcae, "starter" and "response". The category at the end always matches.
Gossip is a bit different because it can also be a single broadcast, implying one vaurca, for variety
If a future person is insane enough to want to expand this even further, you should probably sub-categorize stuff with comments.
*/

/mob/living/carbon/human/proc/GetBroadcast()

//90 phrases
	var/static/list/starter_gossip = list(
		"[prob(50)?"Didn't":"Did"] you hear?", "I saw this.", "...I found out...", "I learned that from a Xakat'kl'atan.", "...The Xakat'kl'atan said...", "...Because of us...",
		"...I did that because...", "...[prob(50)?"Sometimes, ":"Well, "]it's said...", "Could it be?", "Is it [prob(50)?"not ":""]true?", "However...", "Don't you know?", "Really?",
		"How interesting.", "You're curious?", "...You should know...", "Learned it myself.", "...Yes[prob(50)?", but":"..."]", "However...",
		"You don't get it.", "I agree.", "The synchronicity [prob(50)?"said":"told us"]...", "Continuing on with the harmonization thread...",
		"Finishing the harmonization thread...", "That's [prob(50)?"not ":""]accurate.", "Explain [prob(50)?"yourself":"it"].", "Do [prob(50)?"we":"I"] really have to elaborate?",
		"Isn't it obvious?", "What's confusing?", "Simply put...", "The proof is[prob(50)?"n't":""] right there.", "Hard to [prob(50)?"not":""] believe.", "It's questionable.",
		"[prob(50)?"Just":"Enough"] rumors.", "[prob(50)?"I":"We"] know the truth now.", "Discovered it [prob(50)?"myself":"together"].", "...All because...", "It's [prob(50)?"a plot":"planned"].", "It came to me in my sleep.",
		"[prob(50)?"It":"This"] [prob(50)?"surfaced":"showed up"] in the Interstice.", "...Ever since...", "Oh.", "Wow.", "Uh.", "Huh?", "Excuse [prob(50)?"us":"me"].", "Hello?", "Hi.", "[prob(50)?"We":"I"] get it.",
		"[prob(50)?"We're":"I'm"] familiar with that.", "Well-said.", "Not a [prob(50)?"bad":"good"] observation.", "I hope [prob(50)?"I'm":"we're"] right about this.", "Is that so[prob(50)?"":" wrong"]?", "Why not?",
		"Enlightening!", "Truly, nothing compares.", "[prob(50)?"Truth":"Lies"]!", "[prob(50)?"Good":"Interesting"] insight.", "Let's synchronize [prob(50)?"this":"a thread"].", "Quite a thread.", "What a revelation!",
		"You're [prob(50)?"not":""] alone [prob(50)?"on that one":""].", "Wait!", "Hold on...", "Strange.", "As far as I know...", "Don't ruin it.", "You've had too much.", "[prob(50)?"Aha!":"Oh...."]",
		"[prob(50)?"Woah,":"That's"] too far.", "Slow down.", "Keep it up.", "You won't believe this.", "So close, yet so far.", "There's always something.", "Meet up?",
		"Reporting.", "That's what I mean!", "It's [prob(50)?"exactly":"not"] what you think.", "Believe [prob(50)?"me":"us"].", "[prob(50)?"When I say it,":""] I [prob(50)?"really":""] mean it.", "Get what I mean?",
		"It's [prob(50)?"that":"about"] time again.", "Stop underestimating[prob(50)?" them":""]!", "You cannot overestimate [prob(50)?"THIS":"them"].", "Queens!", "How [prob(50)?"is":"isn't"] there still doubt?", "It's [prob(50)?"finally ":""]clicked!"
		)

//140 phrases
	var/static/list/response_gossip = list(
		"The project[prob(50)?"'s canceled":"finished"].", "News for the [prob(50)?"hivecell":"team"].", "We're back.", "More [prob(50)?"kix":"credits"] for the [prob(50)?"team":"hivecell"].", "Zo'ra Soda [prob(50)?"is":"isn't"] [prob(70)?"a cash grab":"good business"].",
		"A lost realm was recently found.", "The Delvers resurrected that realm.", "Delvers really are at risk of being wiped in realms.",
		"We're [prob(50)?"closing in on":"closer to"] the goal.", "Morale is [prob(50)?"low":"lower"].", "The Federation depends on the C'thur.", "[prob(50)?"Ironically, ":""]C'thur are being done in by their own tactics.",
		"The Queenless are [prob(50)?"at fault":"irrelevant"].", "That was a Wyvenet [prob(50)?"slip":"broadcast"]!", "[prob(70)?"Loa'mox":"Ni'mii'katz"] ruin the good K'lax of Flagsdale.",
		"[prob(50)?"Nii'mii'katz":"The Dealership"] only pickpocket because Flagsdale was abandoned[prob(50)?" by Vaur":""].", "[prob(50)?"So, ":""]Ak'riix is an ideology, [prob(50)?"not an organization":"it cannot be stopped"].", "Ak'riix will destroy themselves.",
		"Those were Queenless in the Interstice.", "[prob(50)?"Those pack Bound":"Vizk'tul"] [prob(50)?"of the Mi'Kuetz ":""]can hold dozens of tents.",
		"Mi'Kuetz [prob(50)?"penetrate Aut'akh dens":"invade"] [prob(50)?"with such ease":"so well"] they're called Bunker Busters [prob(50)?"in the Wasteland":"by Unathi"].", "The Yiaa'mak'tzut are a myth.",
		"Ka'Akaix'Rail K'lax was a Xakat'kl'atan", "Morale is [prob(50)?"strong":"stronger"].", "The Titan Prime lives on [prob(50)?"in the Aether":""].",
		"The Queens [prob(50)?"know":"already knew"].", "Nlom is the passive Hivenet of Skrell.", "Srom is the Aether of Skrell",
		"Despite [prob(50)?"all odds":"lacking the Zona Bovinae"], Ta can [prob(50)?"learn to":""] bend the psionic Srom!", "It's [prob(50)?"sanctioned":"permitted"] by the Queens.",
		"Fii'k'iek[prob(50)?", the beautiful war,":""] is [prob(50)?"stepping backwards":"the future"].", "[prob(50)?"Xathul Xon":"The Crucible"], is as savage as the Hive War.",
		"Za'Akaix'Xeru K'lax's [prob(50)?"avatar":"form"] is so [prob(50)?"much":"divine"][prob(50)?", even":" that"] the Cephalons struggle to [prob(50)?"comprehend":"maintain it"]!", "[prob(50)?"Xathul Xon":"The Crucible"] is [prob(50)?"quite":"dangerously"] unstable!",
		"Viax Gist is to blame.", "The [prob(50)?"Bek'kakra":"Bazaar"] has an answer.", "Someone at the [prob(50)?"Bek'kara":"Bazaar of Curiosity"] probably knows and has [prob(50)?"kix":"a price"] for it.",
		"[prob(50)?"This":"That"] campaign [prob(50)?"was":"is"] [prob(50)?"underrated":"overrated"].", "That Reality Garden was beautiful.", "A [prob(50)?"serious":""] secret in the Interstice was [prob(50)?"uncovered":"found"].", "[prob(50)?"One of us":"I"] may become a [prob(50)?"Weavemaker":"Xenr'atan"]!",
		"[prob(50)?"We":"I"] may have won the [prob(50)?"Ira'kan":"Iron Forge"] [prob(50)?"design contest":""].", "[prob(50)?"Yie":"Dialogue"] taught this social tactic.", "[prob(50)?"Yie":"Dialogue"] gave Athvur's spawn all the skills they know.",
		"[prob(50)?"Tyria":"The Chapel of Queens"] is truly neutral ground", "[prob(50)?"Reopq":"Experience"] is truly a one-of-a-kind subrealm.",
		"The beauty of [prob(50)?"Reopq":"Experience"] demands [prob(50)?"kix":"payment"] from non-C'thur.", "[prob(50)?"The":"C'thur's"] [prob(50)?"Royal Chronicle":"Ta'kakpa"] is even more detailed than [prob(50)?"the Ran'kana Chronicle":"Leto's Archive"]!",
		"The [prob(50)?"Tekaka":"Garden of Splendour"] is a paradise [prob(50)?"in paradise":""]!", "[prob(50)?"Qapka":"Gambit"] has copyright concerns.", "The Lifeseer[prob(50)?", Nolnz,":""] predicted humans!",
		"Ky'klux Queenless predicted [prob(50)?"the Phoron shortage pre-Exodus":"this doom"]!", "Those that seek to learn from Famat, search in craters.",
		"There will be another Pon'kana.", "The Pon'kana Engine [prob(50)?"destroyed Sedantis":"caused the Exodus"].", "[prob(50)?"K'lax":"Zo'ra"] caused the Exodus",
		"It would have taken an extra millennium to rebuild from the Hive War[prob(50)?" without the K'lax":""].", "Exterminator warforms were banned with the Great Hive War.",
		"Preimminence [prob(50)?"caused":"was able to cause"] the Great Hive War", "The Fu'ruk Hive's [prob(50)?"suicide bomb":"destructive"] maneuvers [prob(50)?"were so shocking in the war, they":"frightened and"] pushed back the Lii'dra.",
		"There used to be Unbound [prob(50)?"Male Ta":"Consorts"].", "[prob(50)?"Reusk'otahn":"The Hive War Myth"] is [prob(50)?"an extensive chronicle":"very embellished"].", "Integrated weapons in Warriors are [prob(50)?"for symbolism":"a status symbol"].",
		"[prob(50)?"Kelek":"Crisis"] [prob(50)?"could be":"is"] the best way to train and settle medical [prob(50)?"procedures":"duels"].", "The Hive War had [prob(50)?"Queens themselves":"Queen Zoleth herself"] fight!", "Mother K'lax's puzzlebox is [prob(50)?"broken":"uncrackable"].",
		"Mother K'lax is [prob(50)?"only asleep":"gone"] [prob(50)?"because she ascended":""].", "[prob(50)?"Tyrut'katyak":"The Founding"] converts [prob(50)?"even the most skeptical":"all"] non-believers.", "[prob(50)?"Tyrut'katyak":"The Founding"] [prob(50)?"is":"gives"] divine guidance.",
		"[prob(50)?"The Idle Queen":"Ta'nyek"] gifted Queens the Aether[prob(50)?", and Zo'ra gifted all that Aether":"and we earned a place in their gift"].", "High Zo'ra [prob(50)?"birthed":"brought"] Marshal Warriors [prob(50)?"to end death":""].", "Scay's [prob(50)?"genius":"wisdom"] [prob(50)?"birthed":"designed"] the Bulwarks!",
		"Bulwarks were bred for High C'thur[prob(50)?" on Xevrax":""] [prob(50)?"and shared as a gift":""].", "Leto's Delvers are unrivalled in resurrections.",
		"Mouv is on the board of Einstein Engines.", "High Zo'ra [prob(50)?"overtook":"conquered"] all the Hives in [prob(50)?"her birth region":"Xtykt'lotec Rift"].",
		"Real weapons integrated in Warriors would be a handicap to versatility.", "Zo'rane fire burns [prob(50)?"in water":"through anything"] like it's [prob(50)?"not even there":"fuel"]!",
		"Cephalons are [prob(50)?"a":"the greatest"] K'laxan invention.", "The Aether is innately [prob(50)?"Zo'rane":"K'laxan"].", "The Zo'rane Empire is at its end.",
		"Its ties to [prob(50)?"that scourge,":""]the Lii'dra [prob(50)?"from pre-war":""] are no longer clear.", "Queen Lii'dra is Maa'krek.",
		"Queen Lii'dra [prob(50)?"should have died":"did not die"] with Illuau'tia's sinking.", "L'kaal, the Sacrifice Queen, can't be forgotten.",
		"K'lax [prob(50)?"should":"shouldn't"] stay vassals.", "Mother Restorationists are [prob(50)?"simply":"grossly"] defective.", "Without Mother, K'lax should be led by [prob(50)?"all its Queens":"her direct descendant"].",
		"Qii'miiq's radio silence left no choice.", "[prob(50)?"Xi'larx":"The Lost of the Traverse"], had to live without Hivenet for years.",
		"The [prob(50)?"Xi'larx":"Lost of the Traverse"] failed the [prob(50)?"Prime Means":"Yu'tjtuk'tia"], and Queen Vytel.", "Tren'taka is a gateway to the Kala.", "[prob(50)?"That was":"Those were"] Lii'kenka! Eshu'gat.",
		"Independence Day always has Xetl's spawn feverish.", "[prob(50)?"C'yuloxtan":"Newts"] can only be [prob(50)?"pitied":"envied"].",
		"Xetl has the highest SCI in the Federation.", "Holodecks are [prob(50)?"a step towards":"an immature mimicry of"] the Aether.", "Xetl's realm [prob(50)?"merely":"only"] has convincing replicas of Lii'dra.",
		"Belle Cote will welcome you.", "The Node's been upgraded.", "Human survivors say boiled cabbage tastes like k'ois.",
		"O death, no longer our kin shall meet you[prob(50)?", High Zo'ra's famous line":""], [prob(50)?"said during":"was said right after"] the battle!", "The connection is strong.",
		"The connection [prob(50)?"here":""] is [prob(50)?"weak":"strong"].", "Endurer bioforms were rarely seen even on Sedantis.", "It's almost over.", "They [prob(50)?"may be":"are"] defective.",
		"They affiliate with [prob(50)?"unsavory":"shady"] factions.", "Broodcast is an official transmission certified by the Court of Queens.",
		"It's 80 [prob(50)?"kix":"credits"] for being treated like a Queen on Diulszi.", "Fried k'ois fish isn't really k'ois, or fish.","Vaurca Equality donors get a free spa.",
		"Vaurca Equality members get discounts at New Sedantis.", "Vaurca Equality Phoron-Star members get free public transport",
		"It's an inter-species delicacy.", "Zo'ra Soda is [prob(50)?"safe":"made"] for non-Vaurcae.", "Zo'ra want their grip on all Vaurcae[prob(50)?",but it loosens every day.":""].",
		"Neusim allows Phalanx members to experience a fraction of the Aether", "Athvur's realm is open to even non-Vaurcae",
		"The Lemurian Sea [prob(50)?"has Hivenet blackouts":"is a Hivenet deadzone"].", "We were [prob(50)?"scammed":"swindled"].", "What[prob(50)?"'s said in ":" comes from"] echoes should stay in them[prob(50)?", for our benefit":" as they're harder to track"].",
		"Lii'dra have [prob(50)?"changed":"shifted"] tactics [prob(50)?"to recuperate":"cut"] their losses.", "Exterminator Lii'dra bioforms are immediately disabled when their spinal cord is cut.",
		"Vaurca-cruelty free [prob(50)?"Biesellite products enlighten customers on common mistreatment of our species":"mentions are a smear against the K'lax"][prob(50)?", by the Zo'ra":""].",
		"K'lax are the Hive that turned to the stars[prob(70)?"":", with a Queen that turned to the Aether."].", "Ve'katak Phalanx don't require augments.",
		"Ve'katak Phalanx members can receive basic Hivenet transmissions", "Elyrans are [prob(50)?"jealous":"scared"] of the Aether.",
		"A [prob(50)?"chunk":"fifth"] of the Spur's plasteel and borosilicate are [prob(50)?"mass-produced by":"from"] the K'laxan Neutron Forge!",
		"C'thuric Warriors completely tupped the Lyukal in the Traverse.", "Every species will eventually [prob(50)?"invent":"be graced by"] the Aether.",
		"A Ta's gaze blinds the soul", "It's a poem, but better", "It's a campaign, but worse.", "A voiding happened!",
		"Mictlani will welcome you[prob(50)?", Los Azquiles":""]!", "Life [prob(50)?"may":"could"] be a dream.", "They think we're fools.", "We're being [prob(50)?"silenced":"suppressed"]."
		)

//35 phrases
	var/static/list/starter_happy = list (
		"Toothpaste on me!", "Praise the Queens!", "It's my transubstantiation day!", "Much progress has been made!",
		"O death, no longer our kin shall meet you.", "Made a breakthrough!", "It is complete!", "Project finished!",
		"It's [prob(50)?"been":""] an honor.", "Much appreciated.", "Thanks.", "Grateful.", "The [prob(50)?"Xenr'atan":"Weavemaker"] gave me [prob(50)?"these credits":"kix"] for beating the trial.",
		"[prob(50)?"Ah":"Well"], we can unwind in that[prob(50)?" Vibration":""][prob(50)?" subrealm":""].", "I'm now [prob(50)?"a Kataphract Hopeful":"Qukala"]!", "We've [prob(50)?"made":"joined"] the team!",
		"Our plans were accepted.", "We were picked[prob(50)?" for the project":""]!", "I passed the interview.", "[prob(50)?"They're":"That's"] my apprentice.",
		"The simulation predicted this [prob(50)?"success":"happening"].", "Look at what [prob(50)?"I've":"we've"] managed!", "Isn't my Reality Garden [prob(50)?"beautiful":"magnificent"]?", "That was a [prob(50)?"fun":"nice"] puzzlebox.",
		"I may become a [prob(50)?"Xakat'kl'atan":"Master of Ideal Forms"]!", "The [prob(50)?"Xenra'atan":"Weavemaker"] liked my idea.", "I've beaten Yipkana!", "We're great at this!", "I'm on a roll!",
		"Got to witness Zandiziite games!", "You want some?", "[prob(50)?"Ah...":"Oh, "]I'm getting Vk'utet now. [prob(50)?"Morz is a genius!":""]", "Won an award!",
		"[prob(50)?"Reusk'otahn":"That"] was such an amazing campaign[prob(50)?". I have no words":""]."
		)
//35 phrases
	var/static/list/response_happy = list(
		"Wonderful!", "Praise the Queens.", "Good [prob(50)?"work":"on you"].", "How [prob(50)?"great":"amazing"].", "Try [prob(50)?"this":"my"] puzzlebox!", "I have something for you",
		"Well done.", "Ditto.", "Want a subrealm recommendation?", "I have something to add.", "[prob(50)?"Meet":"Gather"] in the Interstice.",
		"Try this [prob(50)?"campaign":"trial"]!", "Amazing!", "Let's celebrate!", "Queens' praise.", "Blessed.", "Oh, I 'll bring Skye'mok!",
		"Let's harmonize [prob(50)?"a thread":"more"] on this.", "Got my consonance?", "Big mandibles.", "[prob(50)?"Hey,":""] I [prob(50)?"know":"found"] this underrated realm.",
		"You may like this related realm[prob(50)?". Seems your taste":"Others have great reviews"].", "Persistent[prob(50)?" like Maa'krek":""]!", "You tupped!", "Keep tupping!", "Glad I could assist.",
		"Happy to have been there.", "Wish [prob(50)?"we":"I"] were there.", "Hyes!", "Fine like algae.", "You've made so much progress.",
		"Nothing, but pride here.", "To see you grow like this!", "You've [prob(50)?"grown":"reached"] beyond praise [prob(50)?"with this":""].", "Stars!"
		)
//40 phrases
	var/static/list/starter_tense = list(
		"Is it safe?", "What was that?", "I saw something.", "Did you [prob(50)?"see":"see"]feel that?", "I'm going to check [prob(50)?"it out":"on something"].",
		"Don't leave.", "It [prob(50)?"hurts!":"burns."]", "[prob(50)?"Queens":"BY THE QUEENS"]!", "Eshu'gat!", "Scourge!", "Help me.", "N-No!", "This can't be!",
		"Make it stop!", "STOP!", "The light...", "Something's...[prob(50)?"stuck ":""]inside[prob(50)?" me":".."].", "Nearing my limit here.", "Something's happening!", "Where's the [prob(50)?"k'ois":"supplies"] when you need it?!",
		"What are they doing?!", "Stop them!", "Need assistance!", "PleasebeintheAether, pleasebeintheAether.", "whatwhatwhatwhatwhatwhat-",
		"It's too much!", "BY THE QUEENS!", "Not sure [prob(50)?"we":"I"] can make it...", "Give [prob(50)?"us":"m-me"] strength...", "It's [prob(50)?"blocked":"stuck"]!", "Blacking...out.", "Blood!",
		"What IS this?", "This is a [prob(50)?"strange":"concerning"] feeling.", "Did that just-", "[prob(50)?"I'm":"My body's"] giving out...", "Tired![prob(50)?" So...tired...":""]", "There's [prob(50)?"something":"someone"] out there.",
		"My socket?! [prob(50)?"My body!":""]", "Defensive lattice! They're [prob(50)?"hacking":"using ewar"].", "Why here [prob(50)?"and now":", and us"]?!"
		)
//40 phrases
	var/static/list/response_tense = list(
		"[prob(50)?"Watch":"Mind"] the [prob(50)?"officers":"onlookers"].", "Be careful.", "Don't Fu'ruk it!", "You must persist[prob(50)?" like Maa'krek":""]!", "That's not a good thing.",
		"Have the [prob(50)?"Viax":"Bound"] check.", "[prob(50)?"Viax":"Bound"], deal with it.", "Help is on the way.", "Don't be reckless!", "Where are you?", "Where is the [prob(50)?"Viax":"Bound"]?",
		"What happened [prob(50)?"here":"there"]?", "Are you alright?", "Are things fine?", "Watch your step!", "It's dangerous!", "You shouldn't stay [prob(50)?"here":"there"]!",
		"O death, no longer our kin shall meet you.", "Leave immediately!", "If you can't be found, you can't be reclaimed.", "We're not welcome.",
		"It's [prob(50)?"no longer":"not"] worth the [prob(50)?"kix":"pay"].", "Big mandibles for this.", "Eshu'gat!", "Don't get tupped.", "[prob(50)?"Viax":"Bound"]!", "Mind the officers.", "They hate us.",
		"It[prob(50)?"'ll":" may"] get worse[prob(50)?" like that":""].", "[prob(50)?"We":"I"] can help!", "This will help you.", "[prob(50)?"Can't":"Don't"] trust them.", "They're after [prob(50)?"us":"you"].", "We're not safe!", "Stay away.",
		"Don't give out!", "Please hang on.", "You won't be [prob(50)?"left behind":"abandoned"].", "Get out of there.", "It's [prob(50)?"chasing":"a chase"]!", "[prob(50)?"Something":"Someone"]'s watching."
		)

	var/sector = "[SSatlas.current_sector.name]"
	var/static/echonote = FALSE //Early notifier for lack of Hivenet echoes, or for whoever's the first vaurca to join

//builds topic for broadcasts

	var/topic = "[pick(100;"gossip", 30;"happy", 15;"tense")]"
	var/echo_starter = "starter_[topic]" //goes to SortEcho() and then what? Gets converted & returned.
	var/echo_response = "response_[topic]"

//builds joined broadcasts. checkjoined is the actual gate, isjoined becomes starter while dojoin becomes response to ensure the same echoes for all
//nowjoined is used exclusively in joined broadcasts, splicing the above two together.

	var/checkjoined = pick(100;0,60;1)
	var/isjoined
	var/dojoin
	var/nowjoined


//What do I want? To splice starter & response. How to achieve this? Assign to the list names as strings, then change them w/ switch statements
	if((sector in list(SECTOR_LEMURIAN_SEA, SECTOR_LEMURIAN_SEA_FAR)) && (SSatlas.current_sector.catchecho == FALSE) && (ROUND_IS_STARTED) && echonote == FALSE)
		echonote = TRUE
		for(var/mob/player in GLOB.player_list)
			if(isvaurca(player)) //Spooky Fog deadzone
				to_chat(player, SPAN_CULT("The Fog cuts you off from the greater Hivenet. Without the echoes, you feel deeply dreadful and lonely."))
	else if((SSatlas.current_sector.catchecho == FALSE) && (ROUND_IS_STARTED) && echonote == FALSE)
		echonote = TRUE
		for(var/mob/player in GLOB.player_list)
			if(isvaurca(player))
				to_chat(player, SPAN_WARNING("The faint echoes of the greater Hivenet fade entirely. Without them, you feel low in company."))
	else if((SSatlas.current_sector.catchecho == TRUE) && ROUND_IS_STARTED)
		if(echo_starter == "starter_gossip")
			echo_starter = pick(starter_gossip)
			echo_response = pick(response_gossip)
			isjoined = echo_starter
			dojoin = echo_response
			nowjoined = isjoined + " " + dojoin
		switch(echo_starter)
			if("starter_gossip")
				echo_starter = pick(starter_gossip)
				return echo_starter
			if("starter_happy")
				echo_starter = pick(starter_happy)
				return echo_starter
			if("starter_tense")
				echo_starter = pick(starter_tense)
				return echo_starter
		switch(echo_response)
			if("response_gossip")
				echo_response = pick(response_gossip)
				return echo_response
			if("response_happy")
				echo_response = pick(response_happy)
				return echo_response
			if("response_tense")
				echo_response = pick(response_tense)
				return echo_response
		isjoined = ECHOMSG(echo_starter) //Still useful as consistent variables even if not a joined echo
		dojoin = ECHOMSG(echo_response)
		CHECKPLAYER
			if(isvaurca(player))
				CHECK_VALID_SOCKET
					if(checkjoined == 1)
						to_chat(player, ECHOMSG(nowjoined))
					else
						to_chat(player, isjoined)
						sleep(rand(5,15))
						to_chat(player, dojoin)
		for(var/mob/G in GLOB.player_list)
			if(isghost(G))
				if(checkjoined == 1)
					to_chat(G, ECHOMSG(nowjoined))
				else
					to_chat(G, isjoined)
					to_chat(G, dojoin)


//Serverside admin toggle.
/datum/controller/subsystem/processing/HiveEchoes/proc/ToggleEchoes()
	set name = "Toggle Hivenet Echoes"
	set category = "Server"
	set desc = "Toggle if Vaurcae can hear faint echoes (fluff) of the greater Hivenet. They will notice."

	if(SSatlas.current_sector.catchecho == TRUE)
		SSatlas.current_sector.catchecho = FALSE
		to_chat(usr,"Vaurcae have been cut off from echoes (fluff) of the greater Hivenet.")
		for(var/mob/living/carbon/human/player in GLOB.player_list)
			if(isvaurca(player))
				CHECK_VALID_SOCKET //Spooky because it's sudden
					to_chat(player, SPAN_CULT("The faint echoes of the greater Hivenet fade entirely. Without them, you feel dreadful and low in company."))
	else if(SSatlas.current_sector.catchecho == FALSE)
		SSatlas.current_sector.catchecho = TRUE
		to_chat(usr,"Vaurcae will receive echoes (fluff) of the greater Hivenet.")
		for(var/mob/living/carbon/human/player in GLOB.player_list)
			if(isvaurca(player))
				CHECK_VALID_SOCKET
					to_chat(player, SPAN_NOTICE("You feel echoes of the greater Hivenet drift back in."))

#undef GETPROJECTION
#undef ECHOMSG
#undef CHECK_VALID_SOCKET
#undef CHECKPLAYER
