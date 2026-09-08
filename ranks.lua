local S = core.get_translator(core.get_current_modname())

local prefixes = {
	{
		name = S("Cobble"),
		icon = "xp_cobble.png",
		color = { r = 255, g = 255, b = 255 },
		base_xp = 0,
		xp_modifier = 100,
	}, -- 0 - 1k
	{
		name = S("Stone"),
		icon = "xp_stone_block.png",
		color = { r = 164, g = 164, b = 164 },
		base_xp = 2000,
		xp_modifier = 200,
	}, -- 2k - 4k
	{
		name = S("Coal"),
		icon = "xp_coal_block.png",
		color = { r = 99, g = 99, b = 99 },
		base_xp = 5000,
		xp_modifier = 500,
	}, -- 5k - 10k
	{
		name = S("Iron"),
		icon = "xp_steel_block.png",
		color = { r = 214, g = 215, b = 216 },
		base_xp = 20 * 1000,
		xp_modifier = 6000,
	}, -- 20k - 80k
	{
		name = S("Copper"),
		icon = "xp_copper_block.png",
		color = { r = 209, g = 188, b = 115 },
		base_xp = 100 * 1000,
		xp_modifier = 10 * 1000,
	}, -- 100k - 200k
	{
		name = S("Gold"),
		icon = "xp_gold_block.png",
		color = { r = 196, g = 162, b = 39 },
		base_xp = 300 * 1000,
		xp_modifier = 50 * 1000,
	}, -- 300k - 800k
	{
		name = S("Diamond"),
		icon = "xp_diamond_block.png",
		color = { r = 85, g = 210, b = 252 },
		base_xp = 1 * 1000 * 1000,
		xp_modifier = 80 * 1000,
	}, -- 1M - 1.8M
	{
		name = S("Mese"),
		icon = "xp_mese_block.png",
		color = { r = 238, g = 252, b = 85 },
		base_xp = 2 * 1000 * 1000,
		xp_modifier = 200 * 1000,
	}, -- 2M - 4M
	{
		name = S("Lava"),
		icon = "xp_lava.png",
		color = { r = 238, g = 30, b = 30 },
		base_xp = 5 * 1000 * 1000,
		xp_modifier = 300 * 1000,
	}, -- 5M - 8M
	{
		name = S("Sulfur"),
		icon = "xp_sulfur.png",
		color = { r = 255, g = 237, b = 77 },
		base_xp = 9 * 1000 * 1000,
		xp_modifier = 300 * 1000,
	}, -- 9M - 12M
	{
		name = S("Uranium"),
		icon = "xp_uranium.png",
		color = { r = 135, g = 209, b = 125 },
		base_xp = 13 * 1000 * 1000,
		xp_modifier = 400 * 1000,
	}, -- 13M - 17M
	{
		name = S("Chernobylite"),
		icon = "xp_chernobylite.png",
		color = { r = 30, g = 138, b = 30 },
		base_xp = 18 * 1000 * 1000,
		xp_modifier = 400 * 1000,
	}, -- 18M - 22M
	{
		name = S("Corium"),
		icon = "xp_corium.png",
		color = { r = 30, g = 238, b = 30 },
		base_xp = 23 * 1000 * 1000,
		xp_modifier = 500 * 1000,
	}, -- 23M - 28M
	{
		name = S("Mithril"),
		icon = "xp_mithril.png",
		color = { r = 49, g = 79, b = 232 },
		base_xp = 29 * 1000 * 1000,
		xp_modifier = 600 * 1000,
	}, -- 29M - 35M
}

local suffixes = {
	-- 7 suffixes
	{ name = S("Peasant"), xp_modifier = 0 },
	{ name = S("Merchant"), xp_modifier = 1 },
	{ name = S("Knight"), xp_modifier = 2 },
	{ name = S("Lord"), xp_modifier = 3 },
	{ name = S("Mayor"), xp_modifier = 5 },
	{ name = S("Master"), xp_modifier = 7 },
	{ name = S("God"), xp_modifier = 10 },
}

-- #suffixes x #prefixes
for _, prefix in pairs(prefixes) do
	for _, suffix in pairs(suffixes) do
		local xp = prefix.base_xp + (prefix.xp_modifier * suffix.xp_modifier)

		xp_redo.register_rank({
			name = prefix.name .. " " .. suffix.name,
			icon = prefix.icon,
			color = prefix.color,
			xp = xp,
		})
	end
end
