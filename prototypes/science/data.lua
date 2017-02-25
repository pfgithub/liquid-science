function string.split(s, sep, pattern)
    local sep, fields = sep or ".", {}
    sep = sep ~= "" and sep or "."
    sep = not pattern and string.gsub(sep, "([^%w])", "%%%1") or sep

    local fields = {}
    local start_idx, end_idx = string.find(s, sep)
    local last_find = 1
    local len = string.len(sep)
    while start_idx do
        local substr = string.sub(s, last_find, start_idx - 1)
        if string.len(substr) > 0 then
            table.insert(fields, string.sub(s, last_find, start_idx - 1))
        end
        last_find = end_idx + 1
        start_idx, end_idx = string.find(s, sep, end_idx + 1)
    end
    local substr = string.sub(s, last_find)
    if string.len(substr) > 0 then
        table.insert(fields, string.sub(s, last_find))
    end
    return fields
end

data:extend({
    {
        type = "recipe-category",
        name = "science-pump"
    }
})

function addScienceFluid(name,base_color,flow_color,icon)
  data:extend({
    {
      type = "fluid",
      name = name,
      default_temperature = 0,
      max_temperature = 0,
      heat_capacity = "0KJ",
      base_color = parseColor(base_color),
      flow_color = parseColor(flow_color),
      subgroup = "tool",
      max_temperature = 100,
      icon = icon,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59,
      order = "e[lubricant]",
    }
  })
end

function addScienceRecipe(name,recipe,result,count,energy)
  data:extend({
   {
      type = "recipe",
      name = name.."-fluid",
      category= "science-pump",
      energy_required = energy,
      ingredients = parseRecipe(recipe),
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

function addOfficialScienceRecipe(name)
  data:extend({
   {
      type = "recipe",
      name = name,
      category = "science-pump",
      energy_required = energy,
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

function parseColor(s)
  if(type(s) == "string") then
    nums = string.split(s,",",false)
    return {
      r=tonumber(nums[1]),
      g=tonumber(nums[2]),
      b=tonumber(nums[3])
    }
  end
  return s
end

function parseRecipe(s)
  if(type(s) == "string") then
    items = string.split(s,",",false)
    for i, item in ipairs(items) do
      icn = string.split(item,":",false)
      items[i] = {icn[1], tonumber(icn[2])}
    end
    return items
  end
  return s
end

function addScience(name,base_color,flow_color,recipe,energy_required,count)
  addScienceFluid(name,base_color,flow_color,"__liquid-science__/graphics/icons/fluid/"..name..".png")
  addScienceRecipe(name,recipe,name,count,energy_required)
  addOfficialScienceRecipe(name)
end

addScience("science-pack-1", "0.8,0.2,0.1", "0.7,0.1,0.1", "iron-gear-wheel:1,copper-plate:1", 5, 1)
addScience("science-pack-2", "0.2,0.9,0.2", "0.1,0.8,0.2", "inserter:1,transport-belt:1", 6, 1)
addScience("science-pack-3", "0.24,0.86,0.95", "0.22,0.68,0.77", "battery:1,advanced-circuit:1,filter-inserter:1,steel-plate:1", 12, 1)
addScience("alien-science-pack", "0.85,0.11,0.92", "0.78,0.1,0.83", "alien-artifact:1", 12, 1)
