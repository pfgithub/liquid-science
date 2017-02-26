string.split = require("api.split")

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

return parseColor
