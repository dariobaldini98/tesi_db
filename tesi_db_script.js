
/* sidebar */

var nav = false;
function open_sidebar() {
  document.getElementById("meta_sidebar").style.width = "40%";
  document.getElementById("content").style.marginLeft = "40%";
  nav = true;
}
function close_sidebar() {
  document.getElementById("meta_sidebar").style.width = "0";
  document.getElementById("content").style.marginLeft = "0";
  nav = false;
}
function toggle_sidebar() {
  nav ? close_sidebar() : open_sidebar();
}