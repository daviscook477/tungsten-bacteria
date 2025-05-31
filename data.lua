local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

data:extend{
  {
    type = "item",
    name = "tungsten-bacteria",
    icon = "__tungsten-bacteria__/graphics/icons/tungsten-bacteria.png",
    pictures =
    {
      { size = 64, filename = "__tungsten-bacteria__/graphics/icons/tungsten-bacteria.png", scale = 0.5, },
      { size = 64, filename = "__tungsten-bacteria__/graphics/icons/tungsten-bacteria-1.png", scale = 0.5, },
      { size = 64, filename = "__tungsten-bacteria__/graphics/icons/tungsten-bacteria-2.png", scale = 0.5, },
      { size = 64, filename = "__tungsten-bacteria__/graphics/icons/tungsten-bacteria-3.png", scale = 0.5, },
    },
    subgroup = "agriculture-processes",
    order = "b[agriculture]-e[tungsten-bacteria]",
    inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 50,
    default_import_location = "gleba",
    weight = 1 * kg,
    spoil_ticks = 1 * minute,
    spoil_result = "tungsten-ore"
  },
  {
    type = "recipe",
    name = "tungsten-bacteria",
    icon = "__tungsten-bacteria__/graphics/icons/tungsten-bacteria.png",
    category = "organic-or-hand-crafting",
    surface_conditions =
    {
      {
        property = "pressure",
        min = 2000,
        max = 4000
      }
    },
    subgroup = "agriculture-processes",
    order = "e[bacteria]-a[bacteria]-c[tungsten]",
    enabled = false,
    allow_productivity = true,
    energy_required = 1,
    ingredients =
    {
      {type = "item", name = "tungsten-carbide", amount = 1},
      {type = "item", name = "jelly", amount = 10},
    },
    results =
    {
      {type = "item", name = "tungsten-bacteria", amount = 1, probability = 0.2 },
      {type = "item", name = "spoilage", amount = 1}
    },
    main_product = "tungsten-bacteria",
    crafting_machine_tint =
    {
      primary = {r = 0.80, g = 0.00, b = 0.60, a = 1.00}, -- #cc0099ff
      secondary = {r = 1.00, g = 0.20, b = 0.80, a = 1.00}, -- #ff33ccff
    }
  },
  {
    type = "recipe",
    name = "tungsten-bacteria-cultivation",
    icon = "__tungsten-bacteria__/graphics/icons/tungsten-bacteria-cultivation.png",
    category = "organic",
    surface_conditions =
    {
      {
        property = "pressure",
        min = 2000,
        max = 4000
      }
    },
    subgroup = "agriculture-processes",
    order = "e[bacteria]-b[cultivation]-c[tungsten]",
    enabled = false,
    allow_productivity = true,
    result_is_always_fresh = true,
    energy_required = 4,
    ingredients =
    {
      {type = "item", name = "tungsten-bacteria", amount = 1},
      {type = "item", name = "bioflux", amount = 1}
    },
    results =
    {
      {type = "item", name = "tungsten-bacteria", amount = 4}
    },
    crafting_machine_tint =
    {
      primary = {r = 0.80, g = 0.00, b = 0.60, a = 1.00}, -- #cc0099ff
      secondary = {r = 1.00, g = 0.20, b = 0.80, a = 1.00}, -- #ff33ccff
    },
    show_amount_in_title = false
  },
  {
    type = "technology",
    name = "tungsten-bacteria-cultivation",
    icon = "__tungsten-bacteria__/graphics/technology/tungsten-bacteria-cultivation.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tungsten-bacteria"
      },
      {
        type = "unlock-recipe",
        recipe = "tungsten-bacteria-cultivation"
      }
    },
    prerequisites = {"agricultural-science-pack", "metallurgic-science-pack"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack",   1},
        {"logistic-science-pack",     1},
        {"chemical-science-pack",     1},
        {"space-science-pack",        1},
        {"metallurgic-science-pack",  1},
        {"agricultural-science-pack", 1},
      },
      time = 60
    }
  },
}