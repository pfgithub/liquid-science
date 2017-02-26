--[[data:extend({
 {
    type = "recipe",
    name = "smelter-inserter",
    enabled = "true",
    ingredients = {
      {"iron-stick",50},
      {"electronic-circuit",50},
      {"iron-gear-wheel",50},
      {"iron-plate",200}
    },
    result = "smelter-inserter"
  }
})]]--

data:extend({
 {
    type = "recipe",
    name = "science-pump",
    enabled = true,
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
    category = "smelting",
    ingredients = {
      {"sand", 1}
    },
    result = "glass"
  }
})
