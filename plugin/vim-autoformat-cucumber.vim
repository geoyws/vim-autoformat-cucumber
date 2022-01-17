function! AutoFormatCucumber()
  "Save cursor position
  let l:winview = winsaveview()

  "Cucumber-file fixes
  if expand('%:e') == 'feature'
    "Standard indentation for scenarios
    %s/\n*  Scenario/\r\r  Scenario/e

    "Standard indentation for scenarios
    %s/\(@\w\+\)\n\n  Scenario/\1\r  Scenario/e
  endif

  "Remove trailing newlines
  %s/\n*\%$//e

  "Remove highlighting
  nohls

  "Restore cursor position
  call winrestview(l:winview)
endfunction

" Call AutoFormat by typing \==
map <silent> <LocalLeader>== :silent call AutoFormatCucumber()<CR>
