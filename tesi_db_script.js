
var nav = false;

/* Set the width of the sidebar to 250px and the left margin of the page content to 250px */

function open_sidebar() {
  document.getElementById("meta_sidebar").style.width = "40%";
  document.getElementById("content").style.marginLeft = "40%";
  nav = true;
}

/* Set the width of the sidebar to 0 and the left margin of the page content to 0 */

function close_sidebar() {
  document.getElementById("meta_sidebar").style.width = "0";
  document.getElementById("content").style.marginLeft = "0";
  nav = false;
}

function toggle_sidebar() {
  nav ? close_sidebar() : open_sidebar();
}