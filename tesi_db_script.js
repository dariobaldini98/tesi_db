
const sidebar = document.querySelectorAll(".sidebar");

window.onload = () =>  {
  document.getElementById("sidebar_button_open").addEventListener("click", open_sidebar);
  document.getElementById("sidebar_button_close").addEventListener("click", close_sidebar);
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