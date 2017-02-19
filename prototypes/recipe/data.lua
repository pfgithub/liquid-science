data:extend({
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
})

data:extend({
 {
    type = "recipe",
    name = "science-red",
    enabled = "true",
    category= "oil-processing",
    ingredients = {
      {"iron-gear-wheel",1},
      {"copper-plate",1}
    },
    results = {
      {
        type="fluid",
        name="science-red",
        amount=1
      }
    }
  }
})

data:extend({
 {
    type = "recipe",
    name = "science-green",
    enabled = "true",
    category= "oil-processing",
    ingredients = {
      --{"basic-inserter",1},
      --{"basic-transport-belt",1}
      {"iron-stick", 1} -- wht doesn't basic-inserter work
    },
    results = {
      {
        type="fluid",
        name="science-green",
        amount=1
      }
    }
  }
})

data:extend({
 {
    type = "recipe",
    name = "science-blue",
    enabled = "true",
    category= "oil-processing",
    ingredients = {
      {"battery",1},
      {"advanced-circuit",1},
      {"filter-inserter",1},
      {"steel-plate",1}
    },
    results = {
      {
        type="fluid",
        name="science-blue",
        amount=1
      }
    }
  }
})

data:extend({
 {
    type = "recipe",
    name = "science-alien",
    enabled = "true",
    category= "oil-processing",
    ingredients = {
      {"alien-artifact",1}
    },
    results = {
      {
        type="fluid",
        name="science-alien",
        amount=1
      }
    }
  }
})
