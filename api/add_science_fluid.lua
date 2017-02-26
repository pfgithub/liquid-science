parseColor = require("api.parse_color")

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

return addScienceFluid
