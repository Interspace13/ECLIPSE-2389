var captureId = "";
var captureRef = "";
var captureMode = "";
var keyMap = {
  ARROWUP: "NORTH",
  ARROWDOWN: "SOUTH",
  ARROWLEFT: "WEST",
  ARROWRIGHT: "EAST",
  " ": "SPACE",
  ESCAPE: "ESCAPE",
  DELETE: "DELETE",
  INSERT: "INSERT",
  ENTER: "RETURN",
  TAB: "TAB",
  BACKSPACE: "BACK",
  HOME: "HOME",
  END: "END",
  PAGEUP: "NORTHEAST",
  PAGEDOWN: "SOUTHEAST",
};

function startCapture(id, ref, mode) {
  captureId = id;
  captureRef = ref;
  captureMode = mode || "hotkey";
  document.getElementById("capture-name").textContent = document.getElementById(
    "name-" + id,
  ).textContent;
  document.getElementById("capture-display").textContent = "Press a key...";
  document.getElementById("capture-overlay").className = "active";
}

function cancelCapture() {
  document.getElementById("capture-overlay").className = "";
  captureId = "";
  captureMode = "";
}

document.addEventListener(
  "keydown",
  function (e) {
    if (!captureId) return;

    e.preventDefault();
    e.stopPropagation();

    if (e.key === "Escape") {
      cancelCapture();
      return;
    }

    var parts = [];
    if (e.ctrlKey) parts.push("CTRL");
    if (e.altKey) parts.push("ALT");
    if (e.shiftKey) parts.push("SHIFT");

    var k = e.key.toUpperCase();

    if (k === "CONTROL" || k === "ALT" || k === "SHIFT") {
      document.getElementById("capture-display").textContent =
        parts.join("+") + "+...";
      return;
    }

    if (keyMap[k]) k = keyMap[k];

    parts.push(k);
    var combo = parts.join("+");
    document.getElementById("capture-display").textContent = combo;
    document.getElementById("capture-overlay").className = "";
    window.location =
      "byond://?src=" +
      captureRef +
      ";keybind_action=rebind;keybind_id=" +
      captureId +
      ";keybind_key=" +
      encodeURIComponent(combo) +
      ";keybind_mode=" +
      captureMode;
    captureId = "";
    captureMode = "";
  },
  true,
);
