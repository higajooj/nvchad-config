require "nvchad.options"

vim.o.cursorlineopt = "both" -- to enable cursorline!

-- old init below
vim.opt.colorcolumn = "80"
vim.opt.rnu = true

-- visible column at 80 chars
vim.cmd [[
   augroup ilikecursorline
      autocmd VimEnter * :highlight CursorLine guibg=#282a2e
   augroup END
]]

-- hyprlang auto detection
vim.filetype.add {
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
}

-- ansible auto detection
vim.filetype.add {
  pattern = { [".*/ansible/.*%.yml"] = "yaml.ansible" },
}

-- jinja
vim.filetype.add {
  extension = {
    jinja = "jinja",
    jinja2 = "jinja",
    j2 = "jinja",
  },
}
