parseScienceRecipe = require("api.parse_science_recipe")

function addScienceRecipe(name,recipe,result,count,energy)
  data:extend({
   {
      type = "recipe",
      name = name.."-fluid",
      category= "science-pump",
      energy_required = energy,
      ingredients = parseScienceRecipe(recipe,name),
      results = {
        {
          type="fluid",
          name= result,
          amount= count
        }
      }
    }
  })
end

return addScienceRecipe
