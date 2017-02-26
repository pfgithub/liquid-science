function addOfficialScienceRecipe(name)
  data:extend({
   {
      type = "recipe",
      name = name,
      category = "science-pump",
      energy_required = energy,
      enabled = data.raw["recipe"][name]["enabled"],
      ingredients = {
        {"glass", 3},
        {
          type="fluid",
          name=name,
          amount=1
        }
      },
      result = name
    }
  })
end

return addOfficialScienceRecipe
