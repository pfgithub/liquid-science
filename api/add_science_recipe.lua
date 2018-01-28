parseScienceRecipe = require("api.parse_science_recipe")
getScienceCount = require("api.get_science_count")
getScienceEnergy = require("api.get_science_energy")

function addScienceRecipe(name,recipe,result,count,energy)
  data:extend({
   {
      type = "recipe",
      name = name.."-fluid",
      category= "science-pump",
      energy_required = energy or getScienceEnergy(name),
      ingredients = parseScienceRecipe(recipe,name),
      subgroup = "intermediate-product",
      results = {
        {
          type ="fluid",
          name = result,
          amount = count or getScienceCount(name)
        }
      },
      result_count = count or getScienceCount(name);
    }
  })
  table.insert(data.raw["recipe"][name.."-fluid"]["ingredients"], {type="fluid",name="water",amount=100})
end

return addScienceRecipe
