-- The Nord palette: https://www.nordtheme.com/.
-- This file has a bunch of added colors.

local O = require('juicy.config').options
colors = {
    black = {
        darkest = "#18191b",
        darker = "#1c1d1f",
        dark = "#212326",
        medium = "#28292c",
        normal = "#303136",
        light = "#37383b",
        lighter = "#3f4043",
        lightest = "#46474a",
    },
    white = {
        lightest = "#ffffff",
        lighter = "#f0f0f0",
        light = "#e0e0e0",
        normal = "#d0d0d0",
        medium = "#c0c0c0",
        dark = "#b0b0b0",
        darker = "#a0a0a0",
        darkest = "#909090",
    },
    gray = {
        dull0 = "#5A5F6E",
        dull1 = "#646977",
        dull2 = "#6E7281",
        dull3 = "#787D8B",
	-- Slightly modified Nord palette, but it's still from the Nord palette.
        g0 = "#2E3340",
        gd0 = "#2c2f3b",
        gd1 = "#383e4d",
        g1 = "#414553",
        g2 = "#3A4155",
        g3 = "#48536F",
        g4 = "#566180",

        lgray0 = "#868B99",
        lgray1 = "#8E94A4",
        lgray2 = "#969DAC",
        hl0 = "#A0A5B7",
        hl1 = "#AEB3CD",
        hl2 = "#BEC1DB",
        gy0 = "#B5B9CB",
        gy1 = "#C8CADA",
        gy2 = "#DDDDED",
        gy3 = "#EEEFFF",
        gy4 = "#FEFFFF",
        gyn0 = "#748BA8",
        gyn1 = "#859CB7",
        gyn2 = "#94ADC5",
        gyg0 = "#ADBACD",
        gyg1 = "#BDCEDE",
        gyg2 = "#CEDFEF",
        gyg3 = "#DEFEF1",
        ligy0 = "#586780",
        ligy1 = "#616F86",
        ligy2 = "#697991",
        ligy3 = "#71849D",
        ygg0 = "#8EA3B3",
        ygg1 = "#A0B8C8",
        ygg2 = "#B4CEDC",
        ygg3 = "#C8E3EB",
        hygg0 = "#95ABC1",
        hygg1 = "#A6BCD2",
        hygg2 = "#B9D1E1",
        hygg3 = "#CDF6F3"
    },

    blue = {
        base = "#5f7b9d",
        bright = "#6a8aa0",
        soft = "#7f9ed0",
        dim = "#5c6d9e",
        contrast = "#8bb3d0",
        vivid = "#5c6dbf",
        subtle = "#6787c5",
        muted = "#4a4b8a",
    },

    cyan = {
        base = "#5fc1c2",
        bright = "#6bd1d2",
        soft = "#8ee0e0",
        dim = "#4f8b8b",
        contrast = "#a2e6e8",
        vivid = "#5c9a9b",
        subtle = "#6fcfd1",
        muted = "#3e6b6b",
    },

    red = {
        base = "#c64e5c",
        bright = "#d85c6b",
        soft = "#e5a8b1",
        dim = "#c64e5a",
        contrast = "#e7b6b7",
        vivid = "#c64e5d",
        subtle = "#d68c8e",
        muted = "#6e3f42",
    },

    orange = {
        base = "#f4a57e",
        bright = "#f8b68e",
        soft = "#fbd9c4",
        dim = "#f3a47b",
        contrast = "#f9d6c5",
        vivid = "#f48b67",
        subtle = "#f5a892",
        muted = "#9b5d4b",
    },

    yellow = {
        base = "#e8b77d",
        bright = "#e9c67a",
        soft = "#f5d8a5",
        dim = "#e6a778",
        contrast = "#f7e0b7",
        vivid = "#e0a15e",
        subtle = "#f1c790",
        muted = "#a87a4b",
    },

    green = {
        base = "#6eae6e",
        bright = "#7cbf7c",
        soft = "#a4d4a4",
        dim = "#6d9e6d",
        contrast = "#cfe4cf",
        vivid = "#5fa464",
        subtle = "#7cbf7c",
        muted = "#527257",
    },

    magenta = {
        base = "#8c5e8c",
        bright = "#a069a2",
        soft = "#d1a5d1",
        dim = "#8a5181",
        contrast = "#e2c8e2",
        vivid = "#a64e8a",
        subtle = "#c87dba",
        muted = "#6a405a",
    },

    purple = {
        base = "#7c5e7c",
        bright = "#876b99",
        soft = "#b8a8c7",
        dim = "#6b4b6d",
        contrast = "#d1c4d3",
        vivid = "#6b4e90",
        subtle = "#9c6aa1",
        muted = "#4b3364",
    },

    teal = {
        base = "#3f6b6d",
        bright = "#4e7c82",
        soft = "#6fb1b2",
        dim = "#32585c",
        contrast = "#a8d2d3",
        vivid = "#357a7a",
        subtle = "#5b9b9b",
        muted = "#2b5051",
    },

    brown = {
        base = "#6d4e3b",
        bright = "#846953",
        soft = "#b39e7e",
        dim = "#6a4f37",
        contrast = "#d3b8a9",
        vivid = "#73482d",
        subtle = "#927a66",
        muted = "#56392b",
    },

    pink = {
        base = "#9e697f",
        bright = "#ae7b8d",
        soft = "#dfadc5",
        dim = "#8e5970",
        contrast = "#f3d1d9",
        vivid = "#b55a7b",
        subtle = "#d38b9d",
        muted = "#70465b",
    },
}
-- `white0` is used as the default fg, and has a blue tint.
-- Reduce that amount of tint.
if O.reduced_blue then colors.blue.base = colors.blue.subtle end

return colors
