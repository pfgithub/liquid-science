data:extend({
  {
    type = "recipe-category",
    name = "science-pump"
  }
})

-- until 0.15, this will be manual -- loljk
addScience = require("api.add_science")

--208, 177, 21 high tech

addScience("science-pack-1", "0.8,0.2,0.1", "0.7,0.1,0.1", "default")
addScience("science-pack-2", "0.2,0.9,0.2", "0.1,0.8,0.2", "default")
addScience("science-pack-3", "0.24,0.86,0.95", "0.22,0.68,0.77", "default")
addScience("military-science-pack", "0.19607843137,0.2431372549,0.2862745098", "0.22,0.68,0.77", "default")
addScience("production-science-pack", "0.85,0.11,0.92", "0.78,0.1,0.83", "default")
addScience("high-tech-science-pack", "0.81568627451,0.69411764705,0.08235294117", "0.22,0.68,0.77", "default")
--addScience("space-science-pack", "0.24,0.86,0.95", "0.22,0.68,0.77", "default", 12, 1)
