require("config")

data:extend({

   {
    type = "recipe",
    name = "snow",
    energy_required = Config.SnowGrab_Time,
    enabled = true,
    ingredients =
    {
    },
    results = { 
		{ "snow", Config.SnowGrab_Amount }
	},
	icon = "__WinterIsComing__/graphics/icons/snow.png",
       icon_size = 32,
  },
  {
    type = "recipe",
    name = "snow-furnace",
    energy_required = 2,
    enabled = true,
    ingredients =
    {
		{ "stone-furnace", 1 },
		{ "pipe", 1 },
		{ "copper-plate", 2 }
    },
    results = { { "snow-furnace", 1 } },
	icon = "__WinterIsComing__/graphics/icons/snow-furnace.png",
      icon_size = 32,
  },
  {
    type = "recipe",
    name = "burner-assembling-machine",
    energy_required = 1,
    enabled = true,
    ingredients =
    {
		{ "stone-furnace", 1 },
		{ "electronic-circuit", 3 },
		{ "iron-gear-wheel", 4 }
    },
    results = { { "burner-assembling-machine", 1 } },
	icon = "__WinterIsComing__/graphics/icons/burner-assembling-machine.png",
      icon_size = 32,
  },
  {
    type = "recipe",
    name = "snow-pump",
    energy_required = 1,
    enabled = true,
    ingredients =
    {
        {"electronic-circuit", 2},
        {"pipe", 1},
        {"iron-gear-wheel", 1}
    },
    results = { { "snow-pump", 1 } },
	icon = "__base__/graphics/icons/offshore-pump.png",
      icon_size = 32,
  },
  {
    type = "recipe",
    name = "snow-smelting",
    energy_required = Config.SnowMelting_Time,
	category = "snow-crafting",
    enabled = true,
	hidden = true,
    ingredients =
    {
		{"snow",1}
    },
    results=
    {
      {type="fluid", name="water", amount=Config.SnowMelting_Amount},
    },
	icon = "__WinterIsComing__/graphics/icons/snow.png",
      icon_size = 32,
  }
  
})