
function getScienceCount(name)
  return data.raw["recipe"][name]["result_count"] or 1;
end

return getScienceCount;
