
function open_sidebar() {
  if (window.matchMedia("(max-width: 480px)").matches) {
    document.getElementById("meta_sidebar").style.width = "95%";
  } else {
    document.getElementById("meta_sidebar").style.width = "40%";
  };
}

function close_sidebar() {
  document.getElementById("meta_sidebar").style.width = "0";
}