
var nav = false;

/* Set the width of the sidebar to 250px and the left margin of the page content to 250px */

function open_sidebar(x) {
  if (x.matches) {
    document.getElementById("meta_sidebar").style.width = "95%";
  } else {
    document.getElementById("meta_sidebar").style.width = "40%";
  };
  nav = true;
}

/* Set the width of the sidebar to 0 and the left margin of the page content to 0 */

function close_sidebar() {
  document.getElementById("meta_sidebar").style.width = "0";
  nav = false;
}

function toggle_sidebar() {
  nav ? close_sidebar() : open_sidebar(x);
}

var x = window.matchMedia("(max-width: 480px)")
open_sidebar(x)
x.addListener(open_sidebar)
