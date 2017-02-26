function string.split(s, sep)
    local sep, fields = sep or ".", {}
    sep = sep ~= "" and sep or "."
    local pattern = false
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

return string.split
