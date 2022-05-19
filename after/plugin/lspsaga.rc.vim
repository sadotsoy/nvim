if !exists('g:loaded_lspsaga')
  finish
endif

lua << EOF
local saga = require('lspsaga')

saga.setup {
  error_sign = '>',
  warn_sign = '?',
  hint_sign = '?',
  infor_sign = '?',
  border_style = "round",
}

EOF

