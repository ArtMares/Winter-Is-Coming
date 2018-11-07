data:extend({

  {
    type = "furnace",
    name = "snow-furnace",
    icon = "__WinterIsComing__/graphics/icons/snow-furnace.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "snow-furnace"},
    max_health = 100,
    corpse = "medium-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/boiler.ogg",
        volume = 0.8
      }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "explosion",
        percent = 30
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_boxes =
    {
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 1} }}
      },
	  --[[{
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, -1} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {1, 0} }}
      },
	  {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {-1, 0} }}
      },--]]
      off_when_no_fluid_recipe = false
    },
    crafting_categories = {"snow-crafting"},
    result_inventory_size = 0,
    energy_usage = "120kW",
    crafting_speed = 1,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions = 0.01,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    animation =
    {
      filename = "__WinterIsComing__/graphics/entity/snow-furnace/snow-furnace.png",
      priority = "extra-high",
      width = 46,
      height = 46,
      shift = {0.03125, 0},
      frame_count = 1,
    },
    working_visualisations =
    {
	  {
		north_position = {0, 0},
        west_position = {0, 0},
        south_position = {0, 0},
        east_position = {0, 0},
		animation = 
			  {
				filename = "__base__/graphics/entity/boiler/boiler-fire-down.png",
				priority = "extra-high",
				line_length = 8,
				width = 21,
				height = 34,
				frame_count = 48,
				axially_symmetrical = false,
				direction_count = 1,
				shift = {0.140625, -0.09375},
			  },
        light = {intensity = 1, size = 1}
	  }
	}
  
  },
  {
    type = "assembling-machine",
    name = "burner-assembling-machine",
    icon = "__WinterIsComing__/graphics/icons/burner-assembling-machine.png",
      icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.35, result = "burner-assembling-machine"},
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      filename = "__WinterIsComing__/graphics/entity/burner-assembling-machine/burner-assembling-machine.png",
      priority="high",
      width = 99,
      height = 102,
      frame_count = 32,
      line_length = 8,
      shift = {0.25, -0.1}
    },
    crafting_categories = {"crafting"},
    crafting_speed = 0.35,
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions = 0.01,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    energy_usage = "320kW",
    ingredient_count = 1,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t1-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    }
  },
  {
    type = "assembling-machine",
    name = "snow-pump",
    icon = "__base__/graphics/icons/offshore-pump.png",
      icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "snow-pump"},
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 1} }}
      },
      off_when_no_fluid_recipe = false
    },
    collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selection_box = {{-1, -1.49}, {1, 0.49}},
    --fast_replaceable_group = "assembling-machine",
    animation =
    {
      north =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {0.9, 0.05},
		frame_count= 1,
        width = 160,
        height = 102
      },
      east =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {0.9, 0.05},
		frame_count= 1,
        x = 160,
        width = 160,
        height = 102
      },
      south =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {0.9, 0.65},
		frame_count= 1,
        x = 320,
        width = 160,
        height = 102
      },
      west =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {1.0, 0.05},
		frame_count= 1,
        x = 480,
        width = 160,
        height = 102
      }
    },
    crafting_categories = {"crafting"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 2.5
    },
    energy_usage = "1W",
    ingredient_count = 0,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.8
        }
      },
      --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    }
  },

})

