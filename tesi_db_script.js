
const sidebar = document.querySelectorAll(".sidebar");
const sidebar_button_open = document.getElementById("sidebar_button_open");
const sidebar_button_close = document.getElementById("sidebar_button_close");

window.onload = () => {
  sidebar_button_open.addEventListener("click", open_sidebar);
  sidebar_button_close.addEventListener("click", close_sidebar);
}

function open_sidebar() {
  if (window.matchMedia("(max-width: 480px)").matches) {
    sidebar.style.width = "95%";
  } else {
    sidebar.style.width = "40%";
  };
}

function close_sidebar() {
  sidebar.style.width = "0";
}