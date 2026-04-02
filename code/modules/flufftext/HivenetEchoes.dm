/*
Vaurcae normally always hear faint echoes of distant Hivenet transmissions. These massive pools are to simulate the entirety of Hivenet.
The template is two echo broadcasts to simulate two vaurcae, "starter" and "response". The category at the end always matches.
Gossip is a bit different because it can also be a single broadcast, implying one vaurca, for variety
If a future person is insane enough to want to expand this even further, you should probably sub-categorize stuff with comments.
*/
//90 phrases
var/list/starter_gossip = list(
	"Did you hear?", "I saw this.", "...I found out...", "I learned that from a Xakat'kl'atan.", "...The Xakat'kl'atan said...", "...Because of us...",
	"...I did that because...", "...Well, it's said...", "Could it be?", "Is it true?", "However...", "Don't you know?", "Really?",
	"How interesting.", "You're curious?", "...You should know...", "Learned it myself.", "...Yes, but...", "However...",
	"You don't get it.", "I agree.", "The synchronicity said...", "Continuing on with the harmonization thread...",
	"Finishing the harmonization thread...", "That's not accurate.", "Explain yourself.", "Do I really have to elaborate?",
	"Isn't it obvious?", "What's confusing?", "Simply put...", "The proof is right there.", "Hard to believe.", "It's questionable.",
	"Enough rumors.", "We know the truth now.", "Discovered it myself.", "...All because...", "It's a plot.", "It came to me in my sleep.",
	"This surfaced in the Interstice.", "...Ever since...", "Oh.", "Wow.", "Uh.", "Huh?", "Excuse me.", "Hello?", "Hi.", "There, there.",
	"I'm familiar with that.", "Well said.", "Not a bad observation.", "I hope we're right about this.", "Is that so wrong?", "Why not?",
	"Enlightening!", "Truly, nothing compares.", "Truth!", "Interesting insight.", "Let's synchronize this.", "Quite a thread.", "What a revelation!",
	"You're not alone on that one.", "Wait!", "Hold on...", "Strange.", "As far as I know...", "Don't ruin it.", "You've had too much.", "Aha!",
	"Woah, too far.", "Slow down.", "Keep it up.", "You won't believe this.", "So close, yet so far.", "There's always something.", "Meet up?",
	"Reporting.", "That's what I mean!", "It's not what you think.", "Believe me.", "When I say it, I mean it.", "Get what I mean?",
	"It's that time again.", "Stop underestimating them!", "You cannot overestimate THIS.", "Queens!", "How is there still doubt?", "It's clicked!"
	)

//140 phrases
var/list/response_gossip = list(
	"The project finished.", "News for the hivecell.", "We're back.", "More kix for the hivecell.", "Zo'ra Soda is a cash grab.",
	"A lost realm was recently found.", "The Delvers resurrected that realm.", "Delvers really are at risk of being wiped in realms.",
	"We're close to the goal.", "Morale is lower.", "The Federation depends on the C'thur.", "The C'thur are being done in by their own tactics.",
	"The Queenless are at fault", "That was a Wyvenet slip!", "Loa'mox ruin the good K'lax of Flagsdale.",
	"Nii'mii'katz only pickpocket because Flagsdale was abandoned.", "Ak'riix is an ideology, not an organization.", "Ak'riix cannot be stopped.",
	"Those were Queenless in the Interstice.", "Vizk'tul pack Bound of the Mi'Kuetz can hold dozens of tents.",
	"Mi'Kuetz penetrate Aut'akh dens with such ease they're called Bunker Busters in the Wasteland.", "The Yiaa'mak'tzut are a myth.",
	"Ka'Akaix'Rail K'lax was a Xakat'kl'atan", "Morale is strong.", "The Titan Prime lives on in the Aether.", "The Queens already knew.",
	"Nlom is the passive Hivenet of Skrell.", "Srom is the Aether of Skrell",
	"Despite lacking the Zona Bovinae, Ta can learn to bend the psionic Srom!", "It's sanctioned by the Queens.",
	"Fii'k'iek, the beautiful war, is the future.", "Xathul Xon, The Crucible, is as barbaric as the Hive War.",
	"Za'Akaix'Xeru K'lax's avatar is so much the Cephalons struggle to maintain it!", "The Crucible is dangerously unstable!",
	"Viax Gist is to blame.", "The Bek'kakra has an answer.", "Someone at the Bek'kara probably knows and has kix for it.",
	"This campaign is underrated.", "That Reality Garden was beautiful.", "A secret in the Interstice was found.", "I may become a Weavemaker!",
	"We may have won the Ira'kan design contest.", "Yie taught this social tactic.", "Yie gave Athvur's spawn all the skills they know.",
	"Tyria, the Chapel of Queens, is truly neutral ground", "Reopq is truly a one-of-a-kind subrealm.",
	"The beauty of Reopq demands kix from non-C'thur.", "C'thur's Ta'kakpa is even more detailed than Leto's Archive!",
	"The Tekaka is a paradise in paradise!", "Qapka has copyright concerns.", "The Lifeseer, Nolnz, predicted humans!",
	"Ky'klux Queenless predicted the Phoron shortage pre-Exodus!", "Those that seek to learn from Famat, search in craters.",
	"There will be another Pon'kana.", "The Pon'kana Engine caused the Exodus.", "K'lax caused the Exodus",
	"It would have taken an extra millennium to rebuild from the Hive War", "Exterminator warforms were banned with the Great Hive War.",
	"Preimminence was able to cause the Great Hive War", "The Fu'ruk Hive's suicide bomb manuevers were so shocking in the war, they pushed back the Lii'dra.",
	"There used to be Unbound Consorts.", "Reusk'otahn is an extensive chronicle.", "Integrated weapons in Warriors is for symbolism.",
	"Reusk'otahn, the Hive War Myth, is very embellished.", "The Hive War had Queen Zoleth herself fight!", "Mother K'lax's puzzlebox is broken.",
	"Mother K'lax is gone.", "Tyrut'katyak, the Founding, converts even the most skeptical non-believers.", "Tyrut'katyak is divine guidance.",
	"Mother K'lax is only asleep.", "High Zo'ra birthed Marshal Warriors to end death.", "Scay birthed the Bulwarks!",
	"Bulwarks were bred for High C'thur on Xevrax and shared as a gift.", "Leto's Delvers are unrivalled in resurrections.",
	"Mouv is on the board of Einstein Engines.", "High Zo'ra overtook all the Hives in her birth region.",
	"Real weapons integrated in Warriors would be a handicap to versatility.", "Zo'rane fire burns in water like it's not even there!",
	"Cephalons are a Klaxian invention.", "The Aether is innately Zorane.", "The Zorane Empire is at its end.",
	"Its ties to that scourge, the Lii'dra, are no longer clear.", "Queen Lii'dra is Maa'krek.",
	"Queen Lii'dra did not die with Illuau'tia's sinking.", "L'kaal, the Sacrifice Queen, can't be forgotten.",
	"K'lax should stay vassals.", "Mother Restorationists are grossly defective.", "Without Mother, K'lax should be led by all Queens.",
	"Qii'miiq's radio silence left no choice.", "Xi'larx, the Lost of the Traverse, had to live without Hivenet for years.",
	"The Xi'larx failed the Prime Means, and Queen Vytel.", "Tren'taka is a gateway to the Kala.", "That was Lii'kenka! Eshu'gat.",
	"Independence Day has Xetl's spawn feverish.", "C'yuloxtan can only be pitied.",
	"Xetl has the highest SCI in the Federation.", "Newts are envied.", "Xetl's realm only has convincing replicas of Lii'dra.",
	"Belle Cote will welcome you.", "The Node's been upgraded.", "Human survivors say boiled cabbage tastes like k'ois.",
	"O death, no longer our kin shall meet you, High Zo'ra's famous line, was said right after the battle!", "The connection is strong.",
	"The connection is weak.", "Endurer bioforms were rarely seen even on Sedantis.", "It's almost over.", "They may be defective.",
	"Aren't they defective?", "Broodcast is an official transmission certified by the Court of Queens.",
	"It's 80 kix for being treated like a Queen on Diulszi.", "Fried k'ois fish isn't really k'ois, or fish.","Vaurca Equality donors get a free spa.",
	"Vaurca Equality members get discounts at New Sedantis.", "Vaurca Equality Phoron-Star members get free public transport",
	"It's an inter-species delicacy.", "Zo'ra Soda is safe for non-Vaurcae.", "Zo'ra Soda is made for non-Vaurcae",
	"Neusim allows Phalanx members to experience a fraction of the Aether", "Athvur's realm is open to even non-Vaurcae",
	"The Lemurian Sea has Hivenet blackouts.", "We were scammed.", "Integrated weaponry for a Warrior is a status symbol.",
	"Lii'dra have changed tactics to recuperate their losses.", "Exterminator Lii'dra bioforms are immediately disabled when their spinal cord is cut.",
	"Vaurca-cruelty free Biesellite products enlighten customers on common mistreatment of our species.",
	"Vaurca-cruelty free mentions are a smear against the K'lax.", "Ve'katak Phalanx don't require augments.",
	"Ve'katak Phalanx members can receive basic Hivenet transmissions", "Elyrans are jealous of the Aether.",
	"A fifth of the Spur's plasteel and borosilicate are mass-produced by the K'laxian Neutron Forge!",
	"C'thuric Warriors completely tupped the Lyukal in the Traverse.", "Every species will eventually be graced by the Aether",
	"A Ta's gaze blinds the soul", "It's a poem, but better", "It's a campaign, but worse.", "A voiding happened!",
	"Mictlani will welcome you! Los Azquiles!", "Life could be a dream.", "They think we're fools.", "We're being suppressed."
	)

//35 phrases
var/list/starter_happy = list (
	"Toothpaste on me!", "Praise the Queens!", "It's my transubstantiation day!", "Much progress has been made!",
	"O death, no longer our kin shall meet you.", "Made a breakthrough!", "It is complete!", "Project finished!",
	"It's an honor.", "Much appreciated.", "Thanks.", "Grateful.", "The Xenr'atan gave me these credits for beating the trial.",
	"Ah, we can unwind in that Vibration subrealm.", "I'm now a Kataphract Hopeful!", "We've joined the team!",
	"Our plans were accepted.", "We were picked for the project!", "I passed the interview.", "They're my apprentice.",
	"The simulation predicted this success.", "Look at what I've managed!", "Isn't my Reality Garden magnificent?", "That was a fun puzzlebox.",
	"I may become a Xakat'kl'atan!", "The Weavemaker liked my idea.", "I've beaten Yipkana!", "We're great at this!", "I'm on a roll!",
	"Got to witness Zandiziite games!", "You want some?", "Ah...I'm getting Vk'utet now. Morz is a genius!", "Won an award!",
	"Reusk'otahn was such an amazing campaign. I have no words."
	)
//35 phrases
var/list/response_happy = list(
	"Wonderful!", "Praise the Queens.", "Good on you.", "How great.", "Try my puzzlebox!", "I have something for you",
	"Well done.", "Ditto.", "Want a subrealm recommendation?", "I have something to add.", "Meet in the Interstice.",
	"Try this campaign!", "Amazing!", "Let's celebrate!", "Queens' praise.", "Blessed.", "Oh, I 'll bring Skye'mok!",
	"Let's harmonize a thread on this.", "Got my consonance?", "Big mandibles.", "Hey, I know this underrated realm.",
	"You may like this related realm.", "Persistent like Maa'krek!", "You tupped!", "Keep tupping!", "Glad I could assist.",
	"Happy to have been there.", "Wish we were there.", "Hyes!", "Fine like algae.", "You've made so much progress.",
	"Nothing, but pride here.", "To see you grow like this!", "You've reached beyond praise.", "Stars!"
	)
//40 phrases
var/list/starter_tense = list(
	"Is it safe?", "What was that?", "I saw something.", "Did you feel that?", "I'm going to check on something.",
	"Don't leave.", "It hurts!", "Queens!", "Eshu'gat!", "Scourge!", "Help me.", "N-No!", "This can't be!", "Make it stop!", "STOP!",
	"The light...", "It burns.", "Nearing my limit here.", "Something's happening!", "Where's the k'ois when you need it?!",
	"What are they doing?!", "Stop them!", "Need assistance!", "PleasebeintheAether, pleasebeintheAether.", "whatwhatwhatwhatwhatwhat-",
	"It's too much!", "BY THE QUEENS!", "Not sure I can make it...", "Give m-me strength...", "It's blocked!", "Blacking...out.", "Blood!",
	"What IS this?", "This is a strange feeling.", "Did that just-", "My body's giving out...", "Tired! So...tired...", "There's something out there.",
	"My socket?! My body!", "Defensive lattice! They're using ewar.", "Why here and now?!"
	)
//40 phrases
var/list/response_tense = list(
	"Watch the officers.", "Be careful.", "Don't Fu'ruk it!", "You must persist, like Maa'krek!", "That's not a good thing.",
	"Have the Viax check.", "Viax, deal with it.", "Help is on the way.", "Don't be reckless!", "Where are you?", "Where is the Viax?",
	"What happened here?", "Are you alright?", "Are things fine?", "Watch your step!", "It's dangerous!", "You shouldn't stay here!",
	"O death, no longer our kin shall meet you.", "Leave immediately!", "If you can't be found, you can't be reclaimed.", "We're not welcome.",
	"It's not worth the kix.", "Big mandibles for this.", "Eshu'gat!", "Don't get tupped.", "Viax!", "Mind the officers.", "They hate us.",
	"It'll get worse like that.", "I can help!", "This will help you.", "Don't trust them.", "They're after us.", "We're not safe!", "Stay away.",
	"Don't give out!", "Please hang on.", "You won't be abandoned.", "Get out of there.", "It's a chase!", "Something's watching."
	)


//120 out-of-context, projected sensations. The wackier projections are probably from the Aether
var/list/echo_projections = list(
	"affection", "sarcasm", "annoyance", "confidence", "gratitude", "excitement", "confusion", "wonder", "interest",
	"disappointment", "anger", "curiosity", "pain", "fear", "caution", "reverence", "disgust","hatred", "a surge of encrypted data",
	"an enormous surge of encrypted data, surging out into wider Hivenet", "mischief", "pleasure", "pride", "contempt",
	"complacency", "an apology", "an epiphany", "nostalgia", "appreciation", "thanks", "acceptance", "anticipation",
	"the chewing of k'ois", "the grinding of k'ois", "the grinding of phoron rock candy", "the fizziness of toothpaste",
	"a strong intoxication", "an energetic soda kick", "rummaging through piles", "carrying heavy crates", "pushing boxes",
	"dragging people", "moving machinery", "frantic searching", "looting", "hiding", "stealthiness", "leaping", "sprinting",
	"climbing", "falling", "grabbing", "twisting something", "bending something", "clawing", "scraping", "biting", "exhaustion", "tiredness",
	"persistence","resilience", "longing", "chewing of V'krexi Snax taffy", "revolting, shameful trophallaxis", "intense warmth", "chills",
	"embarrassment", "satisfaction", "being crushed", "being cut", "being drilled into", "k'ois clotting wounds", "being sprayed",
	"Zorane might", "C'thuric planning", "K'laxian ingenuity", "being blinded", "overwhelming light", "smoking a cigarette",
	"inhaling wulumunusha, the subsequent drop in vocal functions and increased saturation in vision",
	"the sweet, stringy taste of Koko reed", "the high after huffing Xu'Xi Gas", "the chewing of cooked beef",
	"the biting of vegetables", "the taste of boiled cabbages", "feasting on fast food", "eating fried fish",
	"enjoying potato fries", "biting a hard cookie", "feasting on soft cake", "the rhythmic chewing of a corn cob",
	"chewing into fish", "tasting algae", "tearing into crustacean", "pinching apart the insides of a clam",
	"the texture of a roasted diona nymph", "the taste of a cooked vaurca worker", "eating cooked chicken",
	"enjoying mashed potatoes", "tasting a rich gravy coating", "being sprinkled with sauce", "tearing into raw space carp", "chewing into wood",
	"eating rock", "slurping sweet metal and battery acid", "guzzling welding fuel", "incredible spiciness", "drinking warm milk",
	"devouring a monkey from skin to bone", "touching a beating heart", "eating a bland vaurca carapace", "guzzling Zorane fire",
	"remorselessly executing something living", "hatching again", "being slapped", "flexing headtails", "a ping into Hivenet",
	"chewing gum", "flexing skin to smile", "a minty exhale"
	)

#define GETPROJECTION "<i><span class='game say'>Hivenet, <span class='name'>a [pick("Faint", "Distant", "Fading", "Fleeting", "Drifting", "Low", "Weak", "Far")] Echo</span> projects <span class='vaurca'>[pick(echo_projections)]</span></span></i>"
#define GETTOPIC "[pick(100;"gossip", 30;"happy", 15;"tense")]"
#define SENDSTARTER(input) "<i><span class='game say'>Hivenet, <span class='name'>a [pick("Faint", "Distant", "Fading", "Fleeting", "Drifting", "Low", "Weak", "Far")] Echo</span> broadcasts, <span class='vaurca'>\"[pick(starter)]\"</span></span></i>"
#define SENDRESPONSE(input) "<i><span class='game say'>Hivenet, <span class='name'>a [pick("Faint", "Distant", "Fading", "Fleeting", "Drifting", "Low", "Weak", "Far")] Echo</span> broadcasts, <span class='vaurca'>\"[pick(response)]\"</span></span></i>"
#define ECHOMSG(input) "<i><span class='game say'>Hivenet, <span class='name'>a [pick("Faint", "Distant", "Fading", "Fleeting", "Drifting", "Low", "Weak", "Far")] Echo</span> broadcasts, <span class='vaurca'>\"[pick(input)]\"</span></span></i>"
#define CHECK_VALID_SOCKET if(player.internal_organs_by_name[BP_NEURAL_SOCKET] && !within_jamming_range(player) && (GLOB.all_languages[LANGUAGE_VAURCA] in player.languages))

///////////
/* OUTLINE: Echoes are on by default. Sector is checked in GetEcho() proc to automatically disable at roundstart. GetEcho() manages most things:
It decides the broadcast topic, sets starter & strings with the nested SortTopic() proc, rolls for if it's joined, then sends it & projections.
Broadcast & projections have different timers to not feel synced up, 180-300s for former, 240-480s for latter. Broadcast's is managed by HandleEcho()
directly and projection's is managed indirectly, through an if-statement.
All Vaurcae are meant to get the same echoes.

ONLY VAURCAE can catch echoes, BUT NBT2 could allow for partial-catching by non-Vaurcae from tech progression. In that future,
Non-Vaurcae should catch broadcasts as garbled messages, and not even receive projections (too complex signals + pheromones).
This has been talked with a lore writer as of April 2026.
*/
///////////
var/sector
var/catchecho = 1//Echoes can be absent, mostly for the Lemurian Sea. If it's off for a lot more, this should probably be turned into a proper
// space_sectors flag. Can also be toggled in-round for events and gimmicks.

var/last_projection = 0 //Timers
var/last_broadcast = 0
//builds topic for broadcasts
var/topic
var/starter
var/response
//builds joined broadcasts. checkjoined is the actual gate, isjoined becomes starter while dojoin becomes response to ensure the same echoes for all
//nowjoined is used exclusively in joined broadcasts, splicing the above two together.
var/checkjoined
var/isjoined
var/dojoin
var/nowjoined

var/projection

var/echonote = 0 //Roundstart notifier for lack of Hivenet echoes, or for whoever's the first vaurca to join
//Strings to List
/mob/living/carbon/human/proc/SortEcho()
	switch(starter)
		if("starter_gossip")
			starter = starter_gossip
		if("starter_happy")
			starter = starter_happy
		if("starter_tense")
			starter = starter_tense
	switch(response)
		if("response_gossip")
			response = response_gossip
		if("response_happy")
			response = response_happy
		if("response_tense")
			response = response_tense

/mob/living/carbon/human/proc/HandleEcho() //Gets called at mob/living/carbon/human/Life(seconds_per_tick, times_fired)
	if(world.time >= (last_broadcast + rand(180,300) SECONDS))
		GetEcho()
		last_broadcast = world.time


/mob/living/carbon/human/proc/GetEcho()
	sector = "[SSatlas.current_sector.name]"
	topic = GETTOPIC
	projection = GETPROJECTION
	starter = "starter_[topic]"
	response = "response_[topic]"
	checkjoined = pick(100;0,60;1)

//What do I want? To splice starter & response. How do I achieve this? With vars after SortEcho, for consistency & easy conjunction
	if((sector in list(SECTOR_LEMURIAN_SEA, SECTOR_LEMURIAN_SEA_FAR)) && (catchecho > 0) && (ROUND_IS_STARTED) && echonote == 0)
		catchecho = 0
		echonote = 1
		for(var/mob/player in GLOB.player_list)
			if(isvaurca(player))
				to_chat(player, SPAN_CULT("The Fog cuts you off from the greater Hivenet. Without the echoes, you feel dreadful and low in company."))
	else if((sector == SECTOR_CRESCENT_EXPANSE_FAR) && (catchecho > 0) && (ROUND_IS_STARTED) && echonote == 0)
		catchecho = 0
		echonote = 1
		for(var/mob/player in GLOB.player_list)
			if(isvaurca(player))
				to_chat(player, SPAN_WARNING("The faint echoes of the greater Hivenet fade entirely. Without them, you feel low in company."))
	else if((catchecho > 0) && ROUND_IS_STARTED)
		SortEcho()
		spawn(0) //Only here bc you can't have if() directly under SortEcho() otherwise.
			if(starter == starter_gossip)
				isjoined = pick(starter) //Manually pick over the define macro, so it can be consistent for to_chats & added together without issue
				dojoin = pick(response)
				nowjoined = isjoined + " " + dojoin
			isjoined = SENDSTARTER(starter) //Still useful as consistent variables even if not a joined echo
			dojoin = SENDRESPONSE(response)
			for(var/mob/living/carbon/human/player in GLOB.player_list)
				if(isvaurca(player))
					CHECK_VALID_SOCKET
						if(checkjoined == 1)
							to_chat(player, ECHOMSG(nowjoined))
						else
							to_chat(player, isjoined)
							sleep(rand(5,15))
							to_chat(player, dojoin)
							if(world.time >= (last_projection + rand(240,480) SECONDS))
								to_chat(player, projection)
			for(var/mob/G in GLOB.player_list)
				if(isghost(G))
					if(checkjoined == 1)
						to_chat(G, ECHOMSG(nowjoined))
					else
						to_chat(G, isjoined)
						to_chat(G, dojoin)



/datum/HiveEchoes/proc/ToggleEchoes()
	set name = "Toggle Hivenet Echoes"
	set category = "Server"
	set desc = "Toggle if Vaurcae can hear faint echoes (fluff) of the greater Hivenet. They will notice."

	if(catchecho > 0)
		catchecho--
		for(var/mob/living/carbon/human/player in GLOB.player_list)
			if(isvaurca(player))
				CHECK_VALID_SOCKET
					to_chat(player, SPAN_CULT("The faint echoes of the greater Hivenet fade entirely. Without them, you feel dreadful and low in company."))
	else if(catchecho < 1)
		catchecho++
		for(var/mob/living/carbon/human/player in GLOB.player_list)
			if(isvaurca(player))
				CHECK_VALID_SOCKET
					to_chat(player, SPAN_NOTICE("You feel echoes of the greater Hivenet drift back in."))

#undef GETPROJECTION
#undef GETTOPIC
#undef SENDSTARTER
#undef SENDRESPONSE
#undef ECHOMSG
#undef CHECK_VALID_SOCKET
