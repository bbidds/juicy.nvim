-- The Nord palette: https://www.nordtheme.com/.
-- This file has a bunch of added colors.

local O = require('juicy.config').options
colors = {
    black = {
        darkest = "#161719",
        darker = "#1a1c1f",
        dark = "#1e2124",
        medium = "#25272b",
        normal = "#2d2f34",
        light = "#35373c",
        lighter = "#3d3f45",
        lightest = "#45474d"
    },
    white = {
        lightest = "#ffffff",
        lighter = "#f2f3f5",
        light = "#e5e7ea",
        normal = "#d8dadd",
        medium = "#cbcdd0",
        dark = "#bec0c3",
        darker = "#b1b3b6",
        darkest = "#a4a6a9"
    },
    gray = {
        dull0 = "#5c6170",
        dull1 = "#666b7a",
        dull2 = "#707584",
        dull3 = "#7a7f8e",
        g00 = "#1d1e23",
        g0 = "#2d3241",
        gd0 = "#2b2e3b",
        gd1 = "#363c4c",
        g1 = "#3f4352",
        g2 = "#384154",
        g3 = "#46516e",
        g4 = "#545f7f",
        lgray0 = "#848998",
        lgray1 = "#8c92a3",
        lgray2 = "#949bab",
        hl0 = "#9ea3b6",
        hl1 = "#acb1cc",
        hl2 = "#bcbfda",
        gy0 = "#b3b7ca",
        gy1 = "#c6c8d9",
        gy2 = "#dbdcec",
        gy3 = "#ecedfe",
        gy4 = "#fcfdff",
        gyn0 = "#7289a7",
        gyn1 = "#839ab6",
        gyn2 = "#92abc4",
        gyg0 = "#abb8cc",
        gyg1 = "#bbccdd",
        gyg2 = "#ccdded",
        gyg3 = "#dcfcf0",
        ligy0 = "#56657f",
        ligy1 = "#5f6d85",
        ligy2 = "#677790",
        ligy3 = "#6f829c",
        ygg0 = "#8ca1b2",
        ygg1 = "#9eb6c7",
        ygg2 = "#b2ccdb",
        ygg3 = "#c6e1ea",
        hygg0 = "#93a9c0",
        hygg1 = "#a4bad1",
        hygg2 = "#b7cfe0",
        hygg3 = "#cbf4f2"
    },
    blue = {
        deep = "#1c2434",
        base = "#4a6d9c",
        bright = "#6888a6",
        soft = "#7d9ccf",
        dim = "#3d5a8d",
        contrast = "#89b1cf",
        vivid = "#3373cc",
        subtle = "#6585c4",
        muted = "#48499b"
    },
    cyan = {
        deep = "#1b2729",
        base = "#39a3a5",
        bright = "#69cfd1",
        soft = "#8cdedf",
        dim = "#308e90",
        contrast = "#a0e4e7",
        vivid = "#00c8d1",
        subtle = "#6dcbce",
        muted = "#3c696a"
    },
    red = {
        deep = "#2a1719",
        base = "#a83b49",
        bright = "#d65a6a",
        soft = "#e3a6b0",
        dim = "#8f3540",
        contrast = "#e5b4b6",
        vivid = "#e74c3c",
        subtle = "#d48a8d",
        muted = "#6c3d41"
    },
    orange = {
        deep = "#2a1d16",
        base = "#d1814d",
        bright = "#f6b48d",
        soft = "#f9d7c3",
        dim = "#b8703f",
        contrast = "#f7d4c4",
        vivid = "#ff7f50",
        subtle = "#f3a691",
        muted = "#995b4a"
    },
    yellow = {
        deep = "#2a2616",
        base = "#c79841",
        bright = "#e7c479",
        soft = "#f3d6a4",
        dim = "#ad8435",
        contrast = "#f5deb6",
        vivid = "#f1c40f",
        subtle = "#efc58f",
        muted = "#a6784a"
    },
    green = {
        deep = "#1b241a",
        base = "#4e9050",
        bright = "#7abd7b",
        soft = "#a2d2a3",
        dim = "#427b44",
        contrast = "#cdecce",
        vivid = "#28a745",
        subtle = "#7abd7b",
        muted = "#507056"
    },
    magenta = {
        deep = "#271827",
        base = "#8a4c7b",
        bright = "#9e67a1",
        soft = "#cfa3d0",
        dim = "#76406a",
        contrast = "#e0c6e1",
        vivid = "#d33682",
        subtle = "#c67bb9",
        muted = "#683e59"
    },
    purple = {
        deep = "#1f1a25",
        base = "#694c7b",
        bright = "#856998",
        soft = "#b6a6c6",
        dim = "#57406c",
        contrast = "#cfc2d2",
        vivid = "#7b1fa2",
        subtle = "#9a68a0",
        muted = "#493163"
    },
    teal = {
        deep = "#152224",
        base = "#2d5d60",
        bright = "#4c7a81",
        soft = "#6dafb1",
        dim = "#254f52",
        contrast = "#a6d0d2",
        vivid = "#008080",
        subtle = "#59999a",
        muted = "#294e50"
    },
    brown = {
        deep = "#211c19",
        base = "#5d402f",
        bright = "#826752",
        soft = "#b19c7d",
        dim = "#4f3628",
        contrast = "#d1b6a8",
        vivid = "#8b4513",
        subtle = "#907865",
        muted = "#54372a"
    },
    pink = {
        deep = "#251a1f",
        base = "#8a5670",
        bright = "#ac798c",
        soft = "#ddabc4",
        dim = "#764960",
        contrast = "#f1cfd8",
        vivid = "#ff69b4",
        subtle = "#d1899c",
        muted = "#6e445a"
    }
}
-- `white0` is used as the default fg, and has a blue tint.
-- Reduce that amount of tint.
if O.reduced_blue then colors.blue.base = colors.blue.bright end

return colors
