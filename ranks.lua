
local prefixes = {
	{name="Cobble", icon="default_cobble.png", base_xp=0, xp_modifier=1}, -- 0 - 10k
	{name="Stone", icon="default_stone.png", base_xp=20000, xp_modifier=2}, -- 20k - 40k
	{name="Coal", icon="default_coalblock.png", base_xp=50000, xp_modifier=4}, -- 50k - 90k
	{name="Iron", icon="default_steelblock.png", base_xp=100000, xp_modifier=8}, -- 100k - 180k
	{name="Copper", icon="default_copperlock.png", base_xp=200000, xp_modifier=16}, -- 200k - 360k
	{name="Gold", icon="default_goldblock.png", base_xp=400000, xp_modifier=32}, -- 400k - 720k
	{name="Diamond", icon="default_diamondblock.png", base_xp=1000000, xp_modifier=64}, -- 1000k - 1640k
	{name="Mese", icon="default_meseblock.png", base_xp=2000000, xp_modifier=128} -- 2000k - 3280k
}

-- further ideas: lava, ?

local suffixes = {
	-- 7 suffixes
	{name="Peasant", xp_modifier=0},
	{name="Merchant", xp_modifier=10},
	{name="Knight", xp_modifier=100},
	{name="Lord", xp_modifier=1000},
	{name="Mayor", xp_modifier=2000},
	{name="Master", xp_modifier=5000},
	{name="God", xp_modifier=10000}
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


