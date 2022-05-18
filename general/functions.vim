" FUNCTIONS FILE
" sadotsoy

" Fold
function! MinimalFold()
  return printf('%s [%d] %s', v:folddashes, v:foldend - v:foldstart + 1, getline(v:foldstart))
endfunction

" return if exist git branch
function! StatuslineGit() abort
  if exists("g:git_branch")
    return g:git_branch
  endif
  return ''
endfunction

" get git branch
function! GetGitBranch() abort
  let l:is_git_dir = system('echo -n $(git rev-parse --is-inside-work-tree)')
  let g:git_branch = l:is_git_dir == 'true' ?
        \ system('bash -c "echo -n $(git rev-parse --abbrev-ref HEAD)"') : ''
endfunction

" buffer active
function! BufferActive() abort
  return g:status_line_active
endfunction

" == STATUSLINE
function! s:statusline_generator()
  " modes
  " let active = (a:".startup_win_id." == win_getid()) ? "Active" : "None"
  let normal= "%#MoreMsg#%{(mode()=='n')?'\ \ N\ ':''}"
  let insert= "%#Underlined#%{(mode()=='i')?'\ \ I\ ':''}"
  let replace = "%{(mode()=='r')?'\ \ R\ ':''}"
  let visual = "%#Folded#%{(mode()=='v')?'\ \ V\ ':''}"
  " let vline = "%#Folded#%{(mode()=='V')?'\ \ V-L\ ':''}"
  let vblock = "%#Search#%{(mode()=='\<C-V>')?'\ \ V-B\ ':''}"
  " utils
  let sep = '  '
  let sepRight= ' %= '
  let pipe='|'
  let tild='~'
  " colors
  let gray = '%#CursorLineNr#'
  let yellow = '%#String#'
  let pink = '%#DfPopup#'
  let pink2 = '%#SpecialComment#'
  let orange = '%#Function#'
  " data
  let columnLines = " [%c:%l/%L]" "column:line/TOTALLINES
  let bufferNumber = " [%n]"
  let filePath = " %f "
  let fileType = " %y"
  let percent = "[%%%p] " " percent of the cursor position respect the file
  let gitBranch= "%{StatuslineGit()}"
  let bufferActive = "%{BufferActive()}"
  " modes wrapper
  let mode = normal.insert.replace.visual.vblock
  " final result
  return mode.gray.filePath.sepRight.pink.sep.tild.tild.sep.yellow.yellow.bufferNumber.orange.columnLines.sep.pink2.percent
endfunction
let &statusline = s:statusline_generator() " set the status line

" Check group under the cursor
function! CheckSynstack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


" Clipboard for osx
if has ("unix")
  let s:uname = system("uname -s")
  if s:uname == "Darwin\n"
    set clipboard^=unnamed,unnamedplus         " Yank and Paste with the system clipboard
  endif
endif
