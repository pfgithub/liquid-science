local function autoplace_settings(name, coverage)
  local ret = {
    control = name,
    sharpness = 1,
    richness_multiplier = 1500,
    richness_multiplier_distance_bonus = 20,
    richness_base = 500,
    coverage = coverage,
    peaks = {
      {
        noise_layer = name,
        noise_octaves_difference = -1.5,
        noise_persistence = 0.3,
      },
    }
  }
  for i, resource in ipairs({ "sand-ore" }) do
    if resource ~= name then
      ret.starting_area_size = 600 * coverage
      ret.starting_area_amount = 1500
    end
  end
  return ret
end

data:extend({
  {
    type = "noise-layer",
    name = "sand-ore"
  }
})

data:extend({
  {
    type = "autoplace-control",
    name = "sand-ore",
    richness = true,
    order = "g-s",
    category = "resource"
  }
})

data:extend({
  {
    type = "resource",
    name = "sand-ore",
    icon = "__liquid-science__/graphics/icons/resource/sand-ore.png",
    flags = {"placeable-neutral"},
    order="a-b-a",
    minable =
    {
      hardness = 0.9,
      mining_particle = "iron-ore" .. "-particle",
      mining_time = 2,
      result = "sand"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = autoplace_settings("sand-ore", 0.02),
    stage_counts = {1000},
    stages = {
      sheet = {
        filename = "__liquid-science__/graphics/icons/resource/sand-ore-texture.png",
        priority = "extra-high",
        width = 54,
        height = 54,
        frame_count = 1,
        variation_count = 1
      }
    },
    icon_size = 20,
      --map_color = {r=0.85, g=0.765, b=0.608}
    map_color = {r=255, g=255, b=204}
  }
})
