
const meta_sidebar = document.getElementById("meta_sidebar");
const open_meta_sidebar = document.getElementById("open_meta_sidebar");
const close_meta_sidebar = document.getElementById("close_meta_sidebar");

const settings_sidebar = document.getElementById("settings_sidebar");
const open_settings_sidebar = document.getElementById("open_settings_sidebar");
const close_settings_sidebar = document.getElementById("close_settings_sidebar");

const highlight_box = document.getElementById("highlight_box");

window.onload = () => {
	open_meta_sidebar.addEventListener("click", expand_meta_sidebar);
	close_meta_sidebar.addEventListener("click", collapse_meta_sidebar);
	open_settings_sidebar.addEventListener("click", expand_settings_sidebar);
	close_settings_sidebar.addEventListener("click", collapse_settings_sidebar);
	highlight_box.addEventListener("change", highlight);
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

function highlight() {
	if (highlight_box.checked) {
		document.querySelectorAll(".tooltip_container_inactive").classList.replace("tooltip_container_inactive", "tooltip_container");
	} else {
		document.querySelectorAll(".tooltip_container").classList.replace("tooltip_container", "tooltip_container_inactive");
	}
}