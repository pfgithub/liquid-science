addScienceFluid = require("api.add_science_fluid")
addScienceRecipe = require("api.add_science_recipe")
addOfficialScienceRecipe = require("api.add_official_science_recipe")

function addScience(name,base_color,flow_color,recipe,energy_required,count)
  addScienceFluid(name.."-fluid",base_color,flow_color,"__liquid-science__/graphics/icons/fluid/"..name..".png")
  addScienceRecipe(name,name.."-fluid-recipe",recipe,name.."-fluid",count,energy_required)
  addOfficialScienceRecipe(name, name.."-fluid")
end

return addScience
