-- define your colorscheme here
local colourscheme = 'rose-pine'

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colourscheme)
if not is_ok then
    vim.notify('colourscheme ' .. colourscheme .. ' not found!')
    return
end
