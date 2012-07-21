local C = {}

C["global"] = {
	["welcomemessage"] = true,
}

C["general"] = {
	["backdropcolor"] = { 0.0, 0.0, 0.0 },
	["bordercolor"] = { 0.125, 0.125, 0.125 },
	["normalfont"] = false,
}

C["chat"] = {
	["enable"] = true,
	["whispersound"] = true,
	["background"] = true,
	["width"] = 378,
	["height"] = 175,
	["justifyRight"] = true,
}

C["databars"] = {
	["settings"] = {
		["vertical"] = false,
		["height"] = 18,
		["width"] = 100,
		["spacing"] = 3,
		["padding"] = 3,
	},
	["framerate"] = 1,
	["latency"] = 2,
	["memory"] = 3,
	["durability"] = 4,
	["currency"] = true,
	["reputation"] = true,
	["reps"] = {
		"Hellscream's Reach",
		"Therazane",
		"Dragonmaw Clan",
		"Guardians of Hyjal",
		"Systematic Chaos",
	},
}

C["datatext"] = {
	["armor"] = 0,
	["avd"] = 0,
	["bags"] = 5,
	["calltoarms"] = 3,
	["crit"] = 9,
	["currency"] = 0,
	["dps_text"] = 0,
	["dur"] = 0,
	["fps_ms"] = 0,
	["friends"] = 2,
	["gold"] = 6,
	["guild"] = 1,
	["haste"] = 8,
	["hit"] = 11,
	["hps_text"] = 0,
	["mastery"] = 10,
	["micromenu"] = 4,
	["power"] = 7,
	["regen"] = 0,
	["system"] = 0,
	["talent"] = 0,
	["wowtime"] = 12,
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	["profession"] = 1,

	["battleground"] = true,
	["time24"] = true,
	["localtime"] = false,
	["fontsize"] = 12,
}

C["intmodules"] = {
	["addonmanager"] = true,
	["afkcamera"] = true,
	["alertcombat"] = true,
	["hattrick"] = true,
	["locationpanel"] = true,
}

C["media"] = {
	["asphyxia"] = [[Interface\AddOns\AsphyxiaUI\Media\Fonts\Asphyxia.ttf]],
	["pixel_normal"] = [[Interface\AddOns\AsphyxiaUI\Media\Fonts\PixelNormal.ttf]],
	["pixel_ru"] = [[Interface\AddOns\AsphyxiaUI\Media\Fonts\PixelRu.ttf]], 

	["copyicon"] =  [[Interface\AddOns\AsphyxiaUI\Media\Textures\CopyIcon.tga]],
	["logo"] = [[Interface\AddOns\AsphyxiaUI\Media\Textures\Logo.tga]],
	["normTex"] =  [[Interface\AddOns\AsphyxiaUI\Media\Textures\Normal.tga]],
	["iconlayoutdps"] = [[Interface\AddOns\AsphyxiaUI\Media\Textures\IconLayoutDPS.tga]],
	["iconlayoutheal"] = [[Interface\AddOns\AsphyxiaUI\Media\Textures\IconLayoutHeal.tga]],

	["bordercolor"] = C["general"].bordercolor,
	["backdropcolor"] = C["general"].backdropcolor,
	["datatextcolor1"] = { 1, 1, 1 },
	["datatextcolor2"] = { 0.4, 0.4, 0.5 },
}

TukuiEditedDefaultConfig = C