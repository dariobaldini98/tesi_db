
var nav = false;

function open_sidebar(x) {
  if (x.matches) {
    document.getElementById("meta_sidebar").style.width = "95%";
  } else {
    document.getElementById("meta_sidebar").style.width = "40%";
  };
  nav = true;
}

function close_sidebar() {
  document.getElementById("meta_sidebar").style.width = "0";
  nav = false;
}

function toggle_sidebar() {
  nav ? close_sidebar() : open_sidebar(x);
}

var x = window.matchMedia("(max-width: 480px)")
open_sidebar(x);
