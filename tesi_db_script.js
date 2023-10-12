
const meta_sidebar = document.getElementById("meta_sidebar");
const open_meta_sidebar = document.getElementById("open_meta_sidebar");
const close_meta_sidebar = document.getElementById("close_meta_sidebar");

const settings_sidebar = document.getElementById("settings_sidebar");
const open_settings_sidebar = document.getElementById("open_settings_sidebar");
const close_settings_sidebar = document.getElementById("close_settings_sidebar");

const highlight_box = document.getElementById("highlight_box");
const activate_tooltip_box = document.getElementById("activate_tooltip");
const switch_abbr_box = document.getElementById("switch_abbr");
const switch_expan_box = document.getElementById("switch_expan");

window.onload = () => {
	open_meta_sidebar.addEventListener("click", expand_meta_sidebar);
	close_meta_sidebar.addEventListener("click", collapse_meta_sidebar);
	open_settings_sidebar.addEventListener("click", expand_settings_sidebar);
	close_settings_sidebar.addEventListener("click", collapse_settings_sidebar);
	highlight_box.addEventListener("change", highlight);
	activate_tooltip_box.addEventListener("change", activate_tooltip);
	switch_abbr_box.addEventListener("change", switch_abbr_expan);
	switch_expan_box.addEventListener("change", switch_abbr_expan);
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
		var highlight_things = document.querySelectorAll(".to_highlight");
		highlight_things.forEach(function(highlight_thing) {
			highlight_thing.style.cssText = "text-decoration: underline solid #ffff0d 2px;";
		});
	} else {
		var highlight_things = document.querySelectorAll(".to_highlight");
		highlight_things.forEach(function(highlight_thing) {
			highlight_thing.style.cssText = "text-decoration: none;";
		});
	}
}

function activate_tooltip() {
	if (activate_tooltip_box.checked) {
		var tooltip_containers = document.querySelectorAll(".tooltip_container_inactive");
		tooltip_containers.forEach(function(tooltip_container) {
			tooltip_container.classList.replace("tooltip_container_inactive", "tooltip_container");
		});
	} else {
		var tooltip_containers = document.querySelectorAll(".tooltip_container");
		tooltip_containers.forEach(function(tooltip_container) {
			tooltip_container.classList.replace("tooltip_container", "tooltip_container_inactive");
		});
	}
}

function switch_abbr_expan() {
	if (switch_abbr_box.checked) {
		var abbrs = document.querySelectorAll(".abbr_text");
		abbrs.forEach(function(abbr) {
			abbr.style.cssText = "display: none;";
		});
	} else if (switch_expan_box.checked) {
		var expans = document.querySelectorAll(".expan_text");
		expans.forEach(function(expan) {
			expan.style.cssText = "display: inline;";
		});
	}
}