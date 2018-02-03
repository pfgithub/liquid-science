


data:extend({
 {
    type = "recipe",
    name = "science-pump",
    enabled = true,
    energy_required = 2,
    item_group = "production",
    subgroup = "production-machine",
    order = "f",
    ingredients = {
      {"electronic-circuit", 10},
      {"iron-gear-wheel", 10},
      {"transport-belt", 4}
    },
    result = "science-pump"
  }
})

data:extend({
 {
    type = "recipe",
    name = "glass",
    enabled = true,
    energy_required = 2,
    category = "smelting",
    item_group = "intermediate-products",
    subgroup = "raw-material",
    order = "e",
    ingredients = {
      {"sand", 1}
    },
    result = "glass"
  }
})
