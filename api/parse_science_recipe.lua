string.split = require("api.split")

function parseScienceRecipe(s,name)
  if(type(s) == "string") then
    data.raw["recipe"][name]["category"]="science-pump";
    if(s == "default") then
      return data.raw["recipe"][name]["ingredients"];
    end
    items = string.split(s,",",false)
    for i, item in ipairs(items) do
      icn = string.split(item,":",false)
      items[i] = {icn[1], tonumber(icn[2])}
    end
    return items
  end
  return s
end

return parseScienceRecipe
