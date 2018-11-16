
local prefixes = {
	{name="Cobble", icon="default_cobble.png", base_xp=0, xp_modifier=100}, -- 0 - 1k
	{name="Stone", icon="default_stone.png", base_xp=2000, xp_modifier=200}, -- 2k - 4k
	{name="Coal", icon="default_coalblock.png", base_xp=5000, xp_modifier=500}, -- 5k - 10k
	{name="Iron", icon="default_steelblock.png", base_xp=20000, xp_modifier=6000}, -- 20k - 80k
	{name="Copper", icon="default_copperlock.png", base_xp=100000, xp_modifier=10000}, -- 100k - 200k
	{name="Gold", icon="default_goldblock.png", base_xp=300000, xp_modifier=50000}, -- 300k - 800k
	{name="Diamond", icon="default_diamondblock.png", base_xp=1000000, xp_modifier=80000}, -- 1000k - 1800k
	{name="Mese", icon="default_meseblock.png", base_xp=2000000, xp_modifier=300000} -- 2000k - 5000k
}

-- further ideas: lava, ?

local suffixes = {
	-- 7 suffixes
	{name="Peasant", xp_modifier=0},
	{name="Merchant", xp_modifier=1},
	{name="Knight", xp_modifier=2},
	{name="Lord", xp_modifier=3},
	{name="Mayor", xp_modifier=5},
	{name="Master", xp_modifier=7},
	{name="God", xp_modifier=10}
}


-- #suffixes x #prefixes
for _,prefix in pairs(prefixes) do
	for i,suffix in pairs(suffixes) do
		local xp = prefix.base_xp + (prefix.xp_modifier * suffix.xp_modifier)

		xp_redo.register_rank({
			name = prefix.name .. " " .. suffix.name,
			icon = prefix.icon,
			color = {r=255, g=255, b=255}, --TODO color
			xp = xp
		})

	end
end


