
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
const switch_sic_box = document.getElementById("switch_sic");
const switch_corr_box = document.getElementById("switch_corr");
const overstrike_box = document.getElementById("overstrike_box");
const hide_del_box = document.getElementById("hide_del_box");

window.onload = () => {
	open_meta_sidebar.addEventListener("click", expand_meta_sidebar);
	close_meta_sidebar.addEventListener("click", collapse_meta_sidebar);
	open_settings_sidebar.addEventListener("click", expand_settings_sidebar);
	close_settings_sidebar.addEventListener("click", collapse_settings_sidebar);
	highlight_box.addEventListener("change", highlight);
	activate_tooltip_box.addEventListener("change", activate_tooltip);
	switch_abbr_box.addEventListener("change", switch_abbr_expan);
	switch_expan_box.addEventListener("change", switch_abbr_expan);
	switch_sic_box.addEventListener("change", switch_sic_corr);
	switch_corr_box.addEventListener("change", switch_sic_corr);
	overstrike_box.addEventListener("change", overstrike);
	hide_del_box.addEventListener("change", hide_del);
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
	var highlight_things = document.querySelectorAll(".to_highlight");
	if (highlight_box.checked) {
		highlight_things.forEach(function(highlight_thing) {
			highlight_thing.style.cssText = "text-decoration: underline solid #ffff0d 2px;";
		});
	} else {
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
	var abbrs = document.querySelectorAll(".abbr_text");
	var expans = document.querySelectorAll(".expan_text");
	if (switch_abbr_box.checked) {		
		abbrs.forEach(function(abbr) {
			abbr.style.cssText = "display: inline;";
		});
		expans.forEach(function(expan) {
			expan.style.cssText = "display: none;";
		});
	} else if (switch_expan_box.checked) {
		expans.forEach(function(expan) {
			expan.style.cssText = "display: inline;";
		});
		abbrs.forEach(function(abbr) {
			abbr.style.cssText = "display: none;";
		});
	}
}

function switch_sic_corr() {
	var sics = document.querySelectorAll(".sic_text");
	var corrs = document.querySelectorAll(".corr_text");
	if (switch_sic_box.checked) {		
		sics.forEach(function(sic) {
			sic.style.cssText = "display: inline;";
		});
		corrs.forEach(function(corr) {
			corr.style.cssText = "display: none;";
		});
	} else if (switch_corr_box.checked) {
		corrs.forEach(function(corr) {
			corr.style.cssText = "display: inline;";
		});
		sics.forEach(function(sic) {
			sic.style.cssText = "display: none;";
		});
	}
}

function overstrike() {
	var overstrike_things = document.querySelectorAll(".overstrike");
	if (overstrike_box.checked) {
		overstrike_things.forEach(function(overstrike_thing) {
			overstrike_thing.style.cssText = "text-decoration: line-through;";
		});
	} else {
		overstrike_things.forEach(function(overstrike_thing) {
			overstrike_thing.style.cssText = "text-decoration: none";
		});
	}
}

function hide_del() {
	var hide_del_things = document.querySelectorAll(".overstrike");
	if (hide_del_box.checked) {
		hide_del_things.forEach(function(hide_del_thing) {
			hide_del_thing.style.cssText = "display: none;";
		});
	} else {
		hide_del_things.forEach(function(hide_del_thing) {
			hide_del_thing.style.cssText = "display: inline;";
		});
	}
}

