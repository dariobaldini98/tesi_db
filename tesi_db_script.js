
var nav = false;

const small_screen = window.matchMedia("(max-width: 480px)")

function open_sidebar(small_screen) {
  if (small_screen.matches) {
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
  nav ? close_sidebar() : open_sidebar();
}
