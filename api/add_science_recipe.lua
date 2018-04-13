parseScienceRecipe = require("api.parse_science_recipe")
getScienceCount = require("api.get_science_count")
getScienceEnergy = require("api.get_science_energy")

function addScienceRecipe(name,recipename,recipe,result,count,energy)
  data:extend({
   {
      type = "recipe",
      name = recipename,
      category= "science-pump",
      energy_required = energy or getScienceEnergy(name),
      ingredients = parseScienceRecipe(recipe,name),
      item_group = "intermediate-products",
      subgroup = "science-liquid",
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
  table.insert(data.raw["recipe"][recipename]["ingredients"], {type="fluid",name="water",amount=100})
end

return addScienceRecipe
