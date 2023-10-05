
let meta_sidebar
let open_meta_sidebar
let close_meta_sidebar

const settings_sidebar = document.getElementById("settings_sidebar");
const open_settings_sidebar = document.getElementById("open_settings_sidebar");
const close_settings_sidebar = document.getElementById("close_settings_sidebar");


window.onload = () => {
	add_meta_sidebar();
	open_meta_sidebar.addEventListener("click", expand_meta_sidebar);
	close_meta_sidebar.addEventListener("click", collapse_meta_sidebar);
	open_settings_sidebar.addEventListener("click", expand_settings_sidebar);
	close_settings_sidebar.addEventListener("click", collapse_settings_sidebar);
}

function add_meta_sidebar() {
	open_meta_sidebar = document.createElement("a");
	document.getElementsByTagName("body")[0].appendChild(open_meta_sidebar);
	open_meta_sidebar.setAttribute("class", "sidebar_opening_button");
	open_meta_sidebar.setAttribute("id", "open_meta_sidebar");
	
	meta_sidebar = document.createElement("div");
	document.getElementsByTagName("body")[0].appendChild(meta_sidebar);
	meta_sidebar.setAttribute("class", "sidebar");
	meta_sidebar.setAttribute("id", "meta_sidebar");
	
	close_meta_sidebar = document.createElement("a");
	document.getElementById("meta_sidebar").appendChild(open_meta_sidebar);
	close_meta_sidebar.setAttribute("class", "sidebar_closing_button");
	close_meta_sidebar.setAttribute("id", "close_meta_sidebar");
	close_meta_sidebar.setAttribute("href", "javascript:void(0)");
	close_meta_sidebar.textContent = "\u{21D0}";
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

function expand_settings_sidebar() {
	if (window.matchMedia("(max-width: 480px)").matches) {
		settings_sidebar.style.width = "95%";
	} else {
		settings_sidebar.style.width = "40%";
	};
}

function collapse_settings_sidebar() {
	settings_sidebar.style.width = "0";
}