-- The Nord palette: https://www.nordtheme.com/.
-- This file has a bunch of added colors.

local O = require('juicy.config').options
local colors = {
    fruits = {
        f1 = "#E57373",      -- Normal:  red
        f2 = "#FFD54F",      -- Normal:  yellow
        f3 = "#BA68C8",      -- Normal:  purple
        f4 = "#FFB74D",      -- Normal:  orange
        f5 = "#64B5F6",      -- Normal:  blue
        f6 = "#81C784",      -- Normal:  green
        f7 = "#F06292",      -- Normal:  pink
        f8 = "#B8C0A2",      -- Normal:  white

        f9 = "#FF8A80",      -- Bright: Light cherry red
        f10 = "#FFF176",     -- Bright: Light mango yellow
        f11 = "#CE93D8",     -- Bright: Light plum purple
        f12 = "#FFAB91",     -- Bright: Light peach pink
        f13 = "#A5D6A7",     -- Bright: Light kiwi green
        f14 = "#93b9f3",     -- Bright: Light elderberry
        f15 = "#FF80AB",     -- Bright: Light raspberry pink
        f16 = "#E0E0E0"      -- Bright: Coconut white
    },
    light = {
        base = "#F5F5DC",
        bright = "#FFFFF0",
        soft = "#FAF0E6",
        dim = "#EEE8AA"
    },
    dark = {
        base = "#000000",
        bright = "#1C1C1C",
        soft = "#363636",
        dim = "#4F4F4F"
    },
    black = {
        darkest = "#18191b",
        darker = "#1c1d1f",
        dark = "#212326",
        medium = "#28292c",
        normal = "#303136",
        light = "#37383b",
        lighter = "#3f4043",
        lightest = "#46474a"
    },
    white = {
        lightest = "#ffffff",
        lighter = "#f0f0f0",
        light = "#e0e0e0",
        normal = "#d0d0d0",
        medium = "#c0c0c0",
        dark = "#b0b0b0",
        darker = "#a0a0a0",
        darkest = "#909090"
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
	base = "#7BA8FF",
	bright = "#8BC0FF",
	soft = "#CCE6FF",
	dim = "#4A73B3",
	contrast = "#E0F0FF",
	vivid = "#6AA0FF",
	subtle = "#A3C8FF",
	muted = "#3A5F8C"
    },
    cyan = {
        base = "#66c1c9",
        bright = "#72cad1",
        soft = "#b0e8e8",
        dim = "#3e8a8e",
        contrast = "#c7e7e9",
        vivid = "#5cb4b6",
        subtle = "#89d0d2",
        muted = "#4a7a7d"
    },
    red = {
        base = "#c25c65",
        bright = "#f08c95",
        soft = "#ffa8b1",
        dim = "#b85c68",
        contrast = "#f4bcc1",
        vivid = "#b84d55",
        subtle = "#d98c91",
        muted = "#7b3e42"
    },
    orange = {
        base = "#f3967f",
        bright = "#ffbea6",
        soft = "#ffdcbf",
        dim = "#d88a7a",
        contrast = "#f8d1c4",
        vivid = "#f08067",
        subtle = "#f2a892",
        muted = "#a35c4a"
    },
    yellow = {
        base = "#e6b773",
        bright = "#e8bf8a",
        soft = "#f4d8a2",
        dim = "#d8a27a",
        contrast = "#f4e1b8",
        vivid = "#e0a15e",
        subtle = "#f0c490",
        muted = "#ab7a4b"
    },
    green = {
        base = "#78ae78",
        bright = "#8bbc8b",
        soft = "#a8d5a8",
        dim = "#567a56",
        contrast = "#d1e5d1",
        vivid = "#68a568",
        subtle = "#8fbc8f",
        muted = "#547254"
    },
    magenta = {
        base = "#956b95",
        bright = "#a278a2",
        soft = "#d3a5d3",
        dim = "#825182",
        contrast = "#e5c9e5",
        vivid = "#ab3e8a",
        subtle = "#c88db5",
        muted = "#70406a"
    },
    purple = {
        base = "#7c6d87",
        bright = "#87699b",
        soft = "#b898cf",
        dim = "#6f5875",
        contrast = "#d1c5d8",
        vivid = "#774f90",
        subtle = "#a689b0",
        muted = "#554266"
    },
    teal = {
        base = "#4e7a7c",
        bright = "#589a9b",
        soft = "#8fcfd0",
        dim = "#3e6a6c",
        contrast = "#c2e4e4",
        vivid = "#4b8a89",
        subtle = "#79b0b1",
        muted = "#3a6a6b"
    },
    brown = {
        base = "#7e513b",
        bright = "#88694d",
        soft = "#b39e82",
        dim = "#694f37",
        contrast = "#d3b9a8",
        vivid = "#73482d",
        subtle = "#967a66",
        muted = "#56392a"
    },
    pink = {
        base = "#9e697f",
        bright = "#ae7b8e",
        soft = "#dfadc5",
        dim = "#8e5971",
        contrast = "#f3d1d9",
        vivid = "#bc5a7b",
        subtle = "#d38b9f",
        muted = "#70465b"
    }
}
-- `white0` is used as the default fg, and has a blue tint.
-- Reduce that amount of tint.
if O.reduced_blue then colors.blue.base = colors.blue.subtle end

return colors
