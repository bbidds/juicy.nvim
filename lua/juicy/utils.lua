local M = {}

M.NAME = 'juicy'

function M.loaded()
    return vim.g.colors_name == M.NAME
end

function M.highlight(table)
    for group, config in pairs(table) do
        vim.api.nvim_set_hl(0, group, config)
    end
end

function M.is_none(string)
    return string == 'NONE' or string == 'none'
end

function M.none()
    return 'NONE'
end

function M.merge(table1, table2)
    if table1 == table2 == nil then return {} end
    if table1 == nil then
        return table2
    elseif table2 == nil then
        return table1
    end
    return vim.tbl_deep_extend('force', table1, table2)
end

function M.hex_to_rgb(str)
    str = string.lower(str)
    return tonumber(str:sub(2, 3), 16), tonumber(str:sub(4, 5), 16), tonumber(str:sub(6, 7), 16)
end

function M.rgb_to_hex(r, g, b)
    return '#' .. string.format('%x', r) .. string.format('%x', g) .. string.format('%x', b)
end

function M.rgb_to_hsv(r, g, b)
    r, g, b = r / 255, g / 255, b / 255
    local max, min = math.max(r, g, b), math.min(r, g, b)

    local h, s, v
    v = max

    local d = max - min
    if max == 0 then
        s = 0
    else
        s = d / max
    end

    if max == min then
        h = 0
    else
        if max == r then
            h = (g - b) / d
            if g < b then h = h + 6 end
        elseif max == g then
            h = (b - r) / d + 2
        elseif max == b then
            h = (r - g) / d + 4
        end
        h = h / 6
    end

    return h, s, v
end

function M.hsv_to_rbg(h, s, v)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then
        r, g, b = v, t, p
    elseif i == 1 then
        r, g, b = q, v, p
    elseif i == 2 then
        r, g, b = p, v, t
    elseif i == 3 then
        r, g, b = p, q, v
    elseif i == 4 then
        r, g, b = t, p, v
    elseif i == 5 then
        r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255
end

function M.darken(hex, amount, bg) return M.blend(hex, bg, math.abs(amount)) end

function M.lighten(hex, amount, bg) return M.blend(hex, bg, math.abs(amount)) end

function M.blend(color1, alpha, color2)
    -- Ensure the alpha is clamped between 0 and 1
    alpha = math.max(0, math.min(1, alpha))

    -- Convert HEX to RGB
    local function hex_to_rgb(hex)
        hex = hex:gsub("#", "")
        return tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16)
    end

    -- Convert RGB to HEX
    local function rgb_to_hex(r, g, b)
        return string.format("#%02x%02x%02x", r, g, b)
    end

    local r1, g1, b1
    local r2, g2, b2 = 255, 255, 255 -- Default to white if color2 is not provided

    -- Get RGB values for the first color
    if color1 then
        r1, g1, b1 = hex_to_rgb(color1)
    else
        return "#ffffff" -- Return white if no color is provided
    end

    -- If a second color is provided, get its RGB values
    if color2 then
        r2, g2, b2 = hex_to_rgb(color2)
    end

    -- Blend each channel based on the alpha value
    local r = math.floor((1 - alpha) * r1 + alpha * r2)
    local g = math.floor((1 - alpha) * g1 + alpha * g2)
    local b = math.floor((1 - alpha) * b1 + alpha * b2)

    return rgb_to_hex(r, g, b)
end

return M
