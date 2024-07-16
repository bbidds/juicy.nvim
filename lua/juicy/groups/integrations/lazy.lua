local C = require 'juicy.colors'

return {
    LazyH1 = { fg = C.yellow.base, bold = true },
    LazyButtonActive = { link = 'LazyH1' },
    LazyButton = { fg = C.white.normal },
    LazySpecial = { fg = C.yellow.base },

    LazyProgressDone = { fg = C.green.bright },
    LazyProgressTodo = { fg = C.gray.dull3 },

    LazyCommitType = { fg = C.yellow.base },
}
