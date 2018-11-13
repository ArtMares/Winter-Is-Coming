require("prototypes.item")
require("prototypes.entity")
require("prototypes.recipe")
require("prototypes.category")
require("config")

--local tiles = {"grass","grass-dry","grass-medium","sand","sand-dark","dirt","dirt-dark" }
--local water = {"water","water-green","deepwater","deepwater-green"}

local waters = {"deepwater", "deepwater-green"}

for k, v in pairs( tiles ) do
    if(data.raw.tile[v] ~= nil) then
        log(v)
        data.raw["tile"][v].variants = {
      main =
      {
        {
          picture = "__WinterIsComing__/graphics/terrain/snow/snow1.png",
          count = 32,
          size = 1,
        },
--        {
--          picture = "__WinterIsComing__/graphics/terrain/snow/snow2.png",
--          count = 20,
--          size = 2,
--          probability = 0.91,
--          weights = {0.150, 0.150, 0.150, 0.150, 0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 },
--        },
--        {
--          picture = "__WinterIsComing__/graphics/terrain/snow/snow4.png",
--          count = 20,
--          line_length = 10,
--          size = 4,
--          probability = 1,
--          weights = {0.100, 0.80, 0.80, 0.100, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01 }
--        }
      },
      inner_corner =
      {
        picture = "__WinterIsComing__/graphics/terrain/snow/blank.png",
        count = 8
      },
      outer_corner =
      {
        picture = "__WinterIsComing__/graphics/terrain/snow/blank.png",
        count = 8
      },
      side =
      {
        picture = "__WinterIsComing__/graphics/terrain/snow/blank.png",
        count = 8
      }
    }
    data.raw["tile"][v].walking_sound =
    {
      {
        filename = "__WinterIsComing__/sound/walking/snow1.ogg",
        volume = 0.8
      },
      {
        filename = "__WinterIsComing__/sound/walking/snow2.ogg",
        volume = 0.8
      },
      {
        filename = "__WinterIsComing__/sound/walking/snow3.ogg",
        volume = 0.8
      },
      {
        filename = "__WinterIsComing__/sound/walking/snow4.ogg",
        volume = 0.8
      }
    }
    data.raw["tile"][v].map_color = {r=0.85, g=0.85, b=0.88}
    data.raw["tile"][v].vehicle_friction_modifier = 2
    end
end

for k, v in pairs( water ) do

    data.raw["tile"][v].collision_mask = {"ground-tile"}
    data.raw["tile"][v].layer = 40
    data.raw["tile"][v].variants =
    {
      main =
      {
        {
          picture = "__WinterIsComing__/graphics/terrain/water/water1.png",
          count = 16,
          size = 1,
        },
        --[[{
          picture = "__WinterIsComing__/graphics/terrain/snow/snow2.png",
          count = 20,
          size = 2,
          probability = 0.91,
          weights = {0.150, 0.150, 0.150, 0.150, 0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 },
        },
        {
          picture = "__WinterIsComing__/graphics/terrain/snow/snow4.png",
          count = 20,
          line_length = 10,
          size = 4,
          probability = 1,
          weights = {0.100, 0.80, 0.80, 0.100, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01, 0.01 }
        }--]]
      },
      inner_corner =
      {
        picture = "__WinterIsComing__/graphics/terrain/water/water-inner-corner.png",
        count = 8
      },
      outer_corner =
      {
        picture = "__WinterIsComing__/graphics/terrain/water/water-outer-corner.png",
        count = 8
      },
      side =
      {
        picture = "__WinterIsComing__/graphics/terrain/water/water-side.png",
        count = 8
      }
    }
	data.raw["tile"][v].walking_sound =
    {
      {
        filename = "__base__/sound/walking/dirt-02.ogg",
        volume = 0.8
      },
      {
        filename = "__base__/sound/walking/dirt-03.ogg",
        volume = 0.8
      },
      {
        filename = "__base__/sound/walking/dirt-04.ogg",
        volume = 0.8
      }
    }
	data.raw["tile"][v].map_color = {r=0.35, g=0.63, b=0.98}	
	data.raw["tile"][v].vehicle_friction_modifier = 2
	

end

local tree_pictures = {
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-01-a.png",
        width = 194,
        height= 116,
        shift = {2.25, -0.78125}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-01-b.png",
        width = 155,
        height= 129,
        shift = {1.42188, -1.32812}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-01-c.png",
        width = 113,
        height= 81,
        shift = {1.26562, -0.765625}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-01-d.png",
        width = 156,
        height= 120,
        shift = {0.96875, -1.1875}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-01-e.png",
        width = 150,
        height= 124,
        shift = {1.53125, -1.25}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-01-f.png",
        width = 178,
        height= 116,
        shift = {1.96875, -1.15625}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-02-a.png",
        width = 147,
        height= 123,
        shift = {1.8125, -1.48438}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-02-b.png",
        width = 168,
        height= 133,
        shift = {1.17188, -1.10938}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-tree/dry-tree-02-c.png",
        width = 174,
        height= 134,
        shift = {1.07812, -1.5625}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-02-d.png",
        width = 215,
        height= 136,
        shift = {2.875, -0.96875}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-02-e.png",
        width = 158,
        height= 115,
        shift = {2.14062, -1.07812}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-02-f.png",
        width = 180,
        height= 105,
        shift = {2.23438, -0.734375}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-03-a.png",
        width = 168,
        height= 111,
        shift = {0.78125, -1.14062}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-03-b.png",
        width = 145,
        height= 118,
        shift = {0.921875, -1.1875}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-03-c.png",
        width = 161,
        height= 115,
        shift = {1.57812, -1.29688}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-03-d.png",
        width = 183,
        height= 122,
        shift = {2.20312, -1.21875}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-03-e.png",
        width = 166,
        height= 122,
        shift = {2.0625, -0.90625}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-03-f.png",
        width = 160,
        height= 104,
        shift = {1.5625, -0.625}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-04-a.png",
        width = 195,
        height= 139,
        shift = {1.67188, -1.23438}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-04-b.png",
        width = 173,
        height= 138,
        shift = {1.29688, -0.875}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-04-c.png",
        width = 210,
        height= 135,
        shift = {1.5, -1.64062}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-04-d.png",
        width = 149,
        height= 119,
        shift = {1.57812, -1.32812}
      },
      {
        filename = "__base__/graphics/entity/tree//dry-tree/dry-tree-04-e.png",
        width = 173,
        height= 143,
        shift = {1.39062, -1.73438}
      }
    }

local trees = {
    "tree-01",
    "tree-02",
    "tree-03",
    "tree-04",
    "tree-05",
    "tree-06",
    "tree-07",
    "tree-08",
    "tree-09",
    "tree-02-red",
    "tree-08-red",
    "tree-09-red",
    "tree-06-brown",
    "tree-08-brown",
    "tree-09-brown",
}

for k, v in pairs( trees ) do
    data.raw["tree"][v].variations = nil
    data.raw["tree"][v].pictures = tree_pictures
end

local decorations = {
						"brown-asterisk",
						"green-asterisk",
						"red-asterisk",
						"green-pita",
						"green-pita-mini",
						"brown-cane-single",
						"green-coral-mini",
						"brown-coral-mini",
						"orange-coral-mini",
						"brown-fluff",
						"brown-fluff-dry",
						"garballo",
						"garballo-mini-dry",
						"green-bush-mini",
						"green-hairy-grass",
						"green-carpet-grass",
						"green-small-grass",
						"root-A",
						"root-B",
						"brown-carpet-grass",
						"brown-hairy-grass",
					}

for i = 1,#decorations do
    if(data.raw.decorative[decorations[i]] ~= nil) then
        if(data.raw.decorative[decorations[i]].pictures ~= nil) then
            for k, v in pairs( data.raw.decorative[decorations[i]].pictures ) do
                v["tint"] = { r = 200, g = 200, b = 255 }
            end
        end
    end
end

if Config.Balance_Changes == true then

data.raw["furnace"]["stone-furnace"].energy_usage = Config["stone-furnace"].energy_usage
data.raw["furnace"]["stone-furnace"].crafting_speed = Config["stone-furnace"].crafting_speed

data.raw["furnace"]["steel-furnace"].energy_usage = Config["steel-furnace"].energy_usage
data.raw["furnace"]["steel-furnace"].crafting_speed = Config["steel-furnace"].crafting_speed

data.raw["furnace"]["electric-furnace"].energy_usage = Config["electric-furnace"].energy_usage
data.raw["furnace"]["electric-furnace"].crafting_speed = Config["electric-furnace"].crafting_speed

data.raw["inserter"]["burner-inserter"].energy_per_movement = Config["burner-inserter"].energy_per_movement
data.raw["inserter"]["burner-inserter"].energy_per_rotation = Config["burner-inserter"].energy_per_rotation

data.raw["mining-drill"]["burner-mining-drill"].energy_usage = Config["burner-mining-drill"].energy_usage

data.raw["boiler"]["boiler"].energy_consumption = Config["boiler"].energy_consumption

data.raw["fluid"]["water"].default_temperature = Config["water"].default_temperature

data.raw["offshore-pump"]["offshore-pump"].pumping_speed = Config["offshore-pump"].pumping_speed

data.raw["solar-panel"]["solar-panel"].production = Config["solar-panel"].production

data.raw["generator"]["steam-engine"].effectivity = Config["steam-engine"].effectivity

end

data.raw["recipe"]["offshore-pump"].hidden = true
data.raw["item"]["offshore-pump"].flags = {"goes-to-quickbar","hidden"}
data.raw["offshore-pump"]["offshore-pump"].minable = {hardness = 0.2, mining_time = 0.5, result = "snow-pump"}






