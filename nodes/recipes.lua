-- internationalization boilerplate
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

minetest.register_craftitem("digtron:digtron_core", {
	description = S("Digtron Core"),
	inventory_image = "digtron_core.png",
	_doc_items_longdesc = digtron.doc.core_longdesc,
    _doc_items_usagehelp = digtron.doc.core_usagehelp,
})

minetest.register_craft({
	output = "digtron:digtron_core",
	recipe = {
			{"","hades_core:steel_ingot",""},
			{"hades_core:steel_ingot","hades_core:mese_crystal_fragment","hades_core:steel_ingot"},
			{"","hades_core:steel_ingot",""}
			}
})

minetest.register_craft({
	output = "digtron:controller",
	recipe = {
			{"","hades_core:mese_crystal",""},
			{"hades_core:mese_crystal","digtron:digtron_core","hades_core:mese_crystal"},
			{"","hades_core:mese_crystal",""}
			}
})

minetest.register_craft({
	output = "digtron:auto_controller",
	recipe = {
			{"hades_core:mese_crystal","hades_core:mese_crystal","hades_core:mese_crystal"},
			{"hades_core:mese_crystal","digtron:digtron_core","hades_core:mese_crystal"},
			{"hades_core:mese_crystal","hades_core:mese_crystal","hades_core:mese_crystal"}
			}
})

minetest.register_craft({
	output = "digtron:builder",
	recipe = {
			{"","hades_core:mese_crystal_fragment",""},
			{"hades_core:mese_crystal_fragment","digtron:digtron_core","hades_core:mese_crystal_fragment"},
			{"","hades_core:mese_crystal_fragment",""}
			}
})

minetest.register_craft({
	output = "digtron:light",
	recipe = {
			{"","hades_torches:torch",""},
			{"","digtron:digtron_core",""},
			{"","",""}
			}
})

minetest.register_craft({
	output = "digtron:digger",
	recipe = {
			{"","hades_core:diamond",""},
			{"hades_core:diamond","digtron:digtron_core","hades_core:diamond"},
			{"","hades_core:diamond",""}
			}
})

minetest.register_craft({
	output = "digtron:soft_digger",
	recipe = {
			{"","hades_core:steel_ingot",""},
			{"hades_core:steel_ingot","digtron:digtron_core","hades_core:steel_ingot"},
			{"","hades_core:steel_ingot",""}
			}
})

minetest.register_craft({
	output = "digtron:inventory",
	recipe = {
			{"","hades_chests:chest",""},
			{"","digtron:digtron_core",""},
			{"","",""}
			}
})

minetest.register_craft({
	output = "digtron:fuelstore",
	recipe = {
			{"","hades_furnaces:furnace",""},
			{"","digtron:digtron_core",""},
			{"","",""}
			}
})

if minetest.get_modpath("technic") then
	-- no need for this recipe if technic is not installed, avoid cluttering crafting guides
	minetest.register_craft({
		output = "digtron:battery_holder",
		recipe = {
				{"","hades_chests:chest",""},
				{"","digtron:digtron_core",""},
				{"","hades_core:steel_ingot",""}
				}
	})
	
	minetest.register_craft({
		output = "digtron:power_connector",
		recipe = {
				{"","technic:hv_cable",""},
				{"technic:hv_cable","digtron:digtron_core","technic:hv_cable"},
				{"","technic:hv_cable",""}
				}
	})
end

minetest.register_craft({
	output = "digtron:combined_storage",
	recipe = {
			{"","hades_furnaces:furnace",""},
			{"","digtron:digtron_core",""},
			{"","hades_chests:chest",""}
			}
})

minetest.register_craft({
	output = "digtron:pusher",
	recipe = {
			{"","hades_core:coal_lump",""},
			{"hades_core:coal_lump","digtron:digtron_core","hades_core:coal_lump"},
			{"","hades_core:coal_lump",""}
			}
})

minetest.register_craft({
	output = "digtron:axle",
	recipe = {
			{"hades_core:coal_lump","hades_core:coal_lump","hades_core:coal_lump"},
			{"hades_core:coal_lump","digtron:digtron_core","hades_core:coal_lump"},
			{"hades_core:coal_lump","hades_core:coal_lump","hades_core:coal_lump"}
			}
})

minetest.register_craft({
	output = "digtron:empty_crate",
	recipe = {
			{"","hades_chests:chest",""},
			{"","digtron:digtron_core",""},
			{"","hades_core:mese_crystal",""}
			}
})

minetest.register_craft({
	output = "digtron:empty_locked_crate",
	type = "shapeless",
	recipe = {"hades_core:steel_ingot", "digtron:empty_crate"},
})

minetest.register_craft({
	output = "digtron:empty_crate",
	type = "shapeless",
	recipe = {"digtron:empty_locked_crate"},
})

minetest.register_craft({
	output = "digtron:duplicator",
	recipe = {
			{"hades_core:mese_crystal","hades_core:mese_crystal","hades_core:mese_crystal"},
			{"hades_chests:chest","digtron:digtron_core","hades_chests:chest"},
			{"hades_core:mese_crystal","hades_core:mese_crystal","hades_core:mese_crystal"}
			}
})

minetest.register_craft({
	output = "digtron:inventory_ejector",
	recipe = {
			{"hades_core:steel_ingot","hades_core:steel_ingot","hades_core:steel_ingot"},
			{"","digtron:digtron_core",""},
			{"","hades_core:steel_ingot",""}
			}
})

-- Structural

minetest.register_craft({
	output = "digtron:structure",
	recipe = {
			{"group:stick","","group:stick"},
			{"","digtron:digtron_core",""},
			{"group:stick","","group:stick"}
			}
})

minetest.register_craft({
	output = "digtron:panel",
	recipe = {
			{"","",""},
			{"","digtron:digtron_core",""},
			{"","hades_core:steel_ingot",""}
			}
})

minetest.register_craft({
	output = "digtron:edge_panel",
	recipe = {
			{"","",""},
			{"","digtron:digtron_core","hades_core:steel_ingot"},
			{"","hades_core:steel_ingot",""}
			}
})

minetest.register_craft({
	output = "digtron:corner_panel",
	recipe = {
			{"","",""},
			{"","digtron:digtron_core","hades_core:steel_ingot"},
			{"","hades_core:steel_ingot","hades_core:steel_ingot"}
			}
})

-- For swapping digger types
minetest.register_craft({
	output = "digtron:digger",
	recipe = {
			{"digtron:intermittent_digger"},
			}
})
minetest.register_craft({
	output = "digtron:intermittent_digger",
	recipe = {
			{"digtron:digger"},
			}
})
minetest.register_craft({
	output = "digtron:soft_digger",
	recipe = {
			{"digtron:intermittent_soft_digger"},
			}
})
minetest.register_craft({
	output = "digtron:intermittent_soft_digger",
	recipe = {
			{"digtron:soft_digger"},
			}
})

minetest.register_craft({
	output = "digtron:dual_soft_digger",
	type = "shapeless",
	recipe = {"digtron:soft_digger", "digtron:soft_digger"},
})
minetest.register_craft({
	output = "digtron:dual_digger",
	type = "shapeless",
	recipe = {"digtron:digger", "digtron:digger"},
})
minetest.register_craft({
	output = "digtron:soft_digger 2",
	recipe = {
			{"digtron:dual_soft_digger"},
			}
})
minetest.register_craft({
	output = "digtron:digger 2",
	recipe = {
			{"digtron:dual_digger"},
			}
})

-- And some recycling reactions to get digtron cores out of the "cheap" parts:

minetest.register_craft({
	output = "digtron:digtron_core",
	recipe = {
			{"digtron:structure"},
			}
})
minetest.register_craft({
	output = "digtron:digtron_core",
	recipe = {
			{"digtron:panel"},
			}
})
minetest.register_craft({
	output = "digtron:digtron_core",
	recipe = {
			{"digtron:corner_panel"},
			}
})
minetest.register_craft({
	output = "digtron:digtron_core",
	recipe = {
			{"digtron:edge_panel"},
			}
})

minetest.register_craft({
	output = "digtron:digtron_core",
	recipe = {
			{"digtron:inventory"},
			}
})

minetest.register_craft({
	output = "digtron:digtron_core",
	recipe = {
			{"digtron:fuelstore"},
			}
})

minetest.register_craft({
	output = "digtron:digtron_core",
	recipe = {
			{"digtron:combined_storage"},
			}
})

minetest.register_craft({
	output = "digtron:digtron_core",
	recipe = {
			{"digtron:light"},
			}
})

minetest.register_craft({
	output = "digtron:digtron_core",
	recipe = {
			{"digtron:pusher"},
			}
})

minetest.register_craft({
	output = "digtron:digtron_core",
	recipe = {
			{"digtron:axle"},
			}
})
