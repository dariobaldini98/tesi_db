
const meta_sidebar = document.getElementById("meta_sidebar");
const open_meta_sidebar = document.getElementById("open_meta_sidebar");
const close_meta_sidebar = document.getElementById("close_meta_sidebar");

window.onload = () => {
  open_meta_sidebar.addEventListener("click", expand_meta_sidebar);
  close_meta_sidebar.addEventListener("click", collapse_meta_sidebar);
}

function expand_meta_sidebar() {
  if (window.matchMedia("(max-width: 480px)").matches) {
    meta_sidebar.style.width = "95%";
  } else {
    meta_sidebar.style.width = "40%";
  };
}

function collapse_meta_sidebar() {
  meta_sidebar.style.width = "0";
}