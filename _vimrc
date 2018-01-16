"version 6.1
"version 7.0
version 7.4
set nowrap
set ignorecase
"set smartcase
set noic
set ic
set esckeys
set incsearch
set ruler
set shiftwidth=4
set expandtab
"set tabstop=8
set tabstop=4
set autoindent
"set autochdir
set mousefocus
"set gfn=bitstream\ vera\ sans\ mono\ 12
set gfn=bitstream\ vera\ sans\ mono\ 16
"set syntax=vhdl
set tags=tags;/
set hlsearch

if has("terminfo")
  set t_Co=16
  set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
  set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
else
  set t_Co=16
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif


if has("gui")
  "set nu
  colors wombat
  set guioptions-=T
else
  set term=xterm
  "colors wombat
endif

syntax on
highlight Search term = reverse ctermfg=5 ctermbg=7

"map z <C-F>
"map s <C-B>
map [ {
map ] }
"map <F12> :unm [<CR>
"map <S-F12> :map [ {<CR>

map ,h o-----------------------------------------------------------------------------<ESC>
"map ;; :%s/\s\+$//g<CR>:w<CR>
map ;; :w<CR>

map gr :!grep -Hn <cword> %:p:h/*<CR>
"map gr :!ag --nogroup --nocolor -Hn <cword> %:p:h/*<CR>
map gR :vimgrep /<C-R><C-W>/ * <CR>
map gG :vimgrep /\<<C-R><C-W>\>/ * <CR>
map ,l :ls<CR>:e #
map ,, :e #<CR><CR>
map ,s :%s/<C-R><C-W>/<C-R><C-W>/g
" here to end
map ,S :,$s/<C-R><C-W>/<C-R><C-W>/g
" beginning to here
"map ,S :0,s/<C-R><C-W>/<C-R><C-W>/g
map ,w :%s/\<<C-R><C-W>\>/<C-R><C-W>/g

map ,z i (others => '0');<ESC>j
map ,p oprocess()<CR>begin<CR>end process;<ESC>o<ESC>2k0<ESC>
map ,i oif then<CR>else<CR>end if;<ESC>2k3>>wh
map ,c ocase<SPACE>is<CR>when<SPACE>=><CR>when<SPACE>others<SPACE>=><CR>end<SPACE>case;<ESC>3k4>>w
"map ,k ,p,iiCRSTN = '0' <ESC>jxaif MCLK'event and MCLK = '1' then<ESC>O<ESC>3k$iCRSTN, MCLK<ESC>4j<ESC>
"map ,K ,p,ii XHCLK'event and XHCLK = '1' <ESC>2k$iXHCLK<ESC>3jddk<ESC>
"map ,k ,p,ii XHRSTN = '0'<ESC>jxaif XHCLK'event and XHCLK = '1' then<ESC>O<ESC>3k$iXHRSTN, XHCLK<ESC>4j<ESC>oif then<CR>else<CR>end if;<ESC>2k3>>wiXHVopFire = '1' <ESC>o<TAB> <ESC>jRif then<ESC>k
map ,K ,p,ii UCLK'event and UCLK = '1' <ESC>2k$iUCLK<ESC>3jddk<ESC>
map ,k ,p,ii CRSTN = '0'<ESC>jxaif UCLK'event and UCLK = '1' then<ESC>O<ESC>3k$iCRSTN, UCLK<ESC>4j<ESC>oif then<CR>else<CR>end if;<ESC>2k3>>wiUCapFire = '1' <ESC>o<TAB> <ESC>jRif then<ESC>k


map ,r 0<<..>>j
"map ,q 0<<..>>02w5Xw7X3~w2Xj0
map ,m <ESC>i-- <ESC>j2h
map ,M <ESC>o<ESC>71i-<ESC>yypko--<SPACE>
map ,7 <ESC>o<ESC>067i-<ESC>yypko--<SPACE><ESC>k3>>jA
"map ,2 0welDA<space>:<space>std_logic_vector( downto 0);<ESC>0isignal<ESC>
map ,v astd_logic_vector(<SPACE>downto<SPACE>0);<ESC>4ba
map ,V astd_logic;<ESC>b
map ,o A:<space>out<space>std_logic;<ESC>j
map ,O A: out std_logic_vector( downto 0);<ESC>F(a
" find two hex numbers in probe
map ,x /[0-9a-fA-F]\{2\}\s[0-9a-fA-F]\{2\}
map ,@ 023<ESC>qqYp<C-A>q40@q
"map ,a O0<ESC>qqYp<C-A>q
map ,j iconv_integer(<ESC>ea)<ESC>
" connect IO
map ,1 wDa=><space><ESC>0wyw$pbea,<ESC>lD0jw
" connect IO with direction
map ,2 ywwi=> <Esc>pbea,<Esc>64a <Esc>64\|d2wi-- <Esc>f D0jw
" connect internal signal
map ,3 wDa=><space><ESC>0wyw$pbea,<ESC>lDb2xix<ESC>0jw
" connect internal signal with direction
map ,4 ywwi=> <Esc>pb~xea,<Esc>64a <Esc>64\|d2wi-- <Esc>f D0jw

"vhd coding
" declare port
map =O o<ESC>pkyypj0dwkwvep20a <ESC>27\|dwwRout<ESC>wDastd_logic;<ESC>jdd
map =o o<ESC>pkyypj0dwkwvep20a <ESC>27\|dwwRout<ESC>wDastd_logic_vector( downto 0);<ESC>jddkf(
map =I o<ESC>pkyypj0dwkwvep20a <ESC>27\|dwwRin <ESC>wDastd_logic;<ESC>jdd
map =i o<ESC>pkyypj0dwkwvep20a <ESC>27\|dwwRin <ESC>wDastd_logic_vector( downto 0);<ESC>jddkf(

map =b ix<ESC>beldwr<SPACE>
"map =n *:e #<CR><CR>n
" map ,n mp*yw`skpkyypjdwkwPldwwDastd_logic_vector( downto 0);<ESC>F:30i <ESC>37\|dw`pj
" map ,N mp*yw`skpkyypjdwkwPldwwDastd_logic;<ESC>F:30i <ESC>37\|dw`pj
"map ,n mp*yw/signal.*\(\n\)*\<begin\><CR>jpkyypjdwkwPldwwDastd_logic_vector( downto 0);<ESC>F:30i <ESC>37\|dw`p*Nj
"map ,N mp*yw/signal.*\(\n\)*\<begin\><CR>jpkyypjdwkwPldwwDastd_logic;<ESC>F:30i <ESC>37\|dw`p*Nj
map ,n mpviwyw/signal.*\(\n\)*\<begin\><CR>jpkyypjdwkwPldwwDastd_logic_vector( downto 0);<ESC>F:30i <ESC>37\|dw`pj
map ,N mpviw"oy/signal.*\(\n\)*\<begin\><CR>jpkyypjdwkwPldwwDastd_logic;<ESC>F:30i <ESC>37\|dw`pj

" add comment
map C <ESC>0i-- <ESC>j
" remove comment
map T <ESC>03xj
" entity to component
map ,e jdwicomponent <ESC>w*.d2wNwD
" component to instance
map ,t j*ddNdwywPa: <ESC>0iu<ESC>jea map<ESC>

" navigate multiple files
map <C-N> :bn<CR>
map <C-P> :bp<CR>
map <C-W> :bd<CR>

" allow . to execute on each line of a visual selection
vnoremap . :normal .<CR>

" change current word to upper case
"map T :s/<C-R><C-W>/\U&/<CR>nfX

" disable beep a/v
"set vb t_vb=
set novb
"set vb

"set term=builtin_xterm
set mouse=
" go component
map gc /t\s\+<C-R><C-W>\s*$<CR>
" go instance
map gi /u.*<C-R><C-W>\s*$<CR>
" go file
"map gl wb"2ywq:ie <Esc>"2pbi*<Esc>lguwea*.vhd<Esc><CR>
map gl wb"2ywq:ie <Esc>"2pbi*<Esc>lguwea.v*<Esc><CR>
" go file in new tab
map gL wb"2ywq:itabe <Esc>"2pbi*<Esc>lguwea.v*<Esc><CR>
" go signal drive
"map gd /^\s*[^-]*\s*<C-R><C-W>\>\((*.*)\)*\s*<=\\|=>\s*<C-R><C-W>\><CR>
map gd /\<<C-R><C-W>\>\((*.*)\)*\s*<=\\|=>\s*<C-R><C-W>\><CR>zz
" " go sensitivity list of current process
" map gs ?).*\nbegin<CR>
" go instance signal when in component over a port
map gs viw"my?component<CR>w/<C-R><C-W><CR>/<C-R>/.*<C-R>/<CR>/<C-R>m<CR>
" go cabac probe error
map ge /\|.*\n.*\|<CR>
" add cword to sensitivity list
"map ,a mp*yw?)\nbegin<CR>i, <ESC>Da)<ESC>`p
map ,a mp*`pviwy?)\s*\(--.*\)*\nbegin<CR>i, <ESC>plDa)<ESC>`p
map ,A mp*`pviwy?)\s*\(--.*\)*\nbegin<CR><ESC>hplDa)<ESC>`p
map ,a mp*`pviwy?process\s*(<CR>f(pa, <ESC>`pjzz
map ,A mp*`pviwy?process\s*(<CR>f(p`pjzz

" mark paragraph pragma translate off
map ,P /FPGA_PROBE<CR>O--pragma translate_off<ESC>yy}P$xxan<ESC>
" unmark paragraph pragma translate off
map ,Q /FPGA_PROBE<CR>kdd}k./pragma.*\n.*--FP<CR>

" count the number of matches of current word in entire file
" map =s :%s/<C-R><C-W>/&/g<CR>
map =s :%s/<C-R><C-W>//gn<CR>
" count the number of matches of current word in the following text
map =S :,$s/<C-R><C-W>//gn<CR>
" count the number of matches of current search in entire text
map =n :%s///gn<CR>
" count the number of matches of current search in entire file
map =/ :%s/<C-R>///gn<CR>

" align <=
map ,= 0f<100i <ESC>33\|dwj
" format port declartion line
map ,d <ESC>06i <ESC>5\|dwf:20i <ESC>27\|dw2a <ESC>dwguwe3a <ESC>33\|dw0j

" need to escape | when writing macro
" verilog coding
map ,5 29\|7r<SPACE>0
"map ,6 13\|23r<SPACE>0wviw"axdwviw"bxS.<ESC>"bp35a<SPACE><ESC>35\|i(<SPACE><ESC>"bp33a<SPACE><ESC>61\|dwi<SPACE>),<SPACE>//<SPACE><ESC>"ap0j
"map ,6 0wviw"+y32xywi.<ESC>e35a<SPACE><ESC>35|i(<SPACE><ESC>p35a<SPACE><ESC>61|cw)<ESC>la<SPACE>//<SPACE><ESC>"+p0j
"map ,6 0eea,<ESC>0exXXbviw"+y29xywi.<ESC>e33a<SPACE><ESC>35\|i(<SPACE><ESC>p33a<SPACE><ESC>61\|cw)<ESC>A<SPACE><ESC>20a<SPACE><ESC>64\|cw//<SPACE><ESC>"+pa<TAB><ESC>0f,xa<SPACE><ESC>j0
map ,6 3A<SPACE><ESC>11\|25r<SPACE>0wv"1ydwywi.<ESC>pa(<ESC>ea)<ESC>lla//<SPACE><ESC>"1plldw0f(35i<SPACE><ESC>35\|dwa<SPACE><ESC>e35a<SPACE><ESC>61\|dw0j

" substitute among files :h argdo
" tab switch
map <F1> :tabp<CR>
map <F2> :tabn<CR>
map <F7> :tabp<CR>
map <F8> :tabn<CR>
map <F3> n
noremap <C-TAB> :tabn<CR>
noremap <C-S-TAB> :tabp<CR>
map <F9> :so ~/.vimrc<CR>
map <F5> :cprev<CR>zz
map <F6> :cnext<CR>zz

" go to match
"map <F4> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

	" vim -b : edit binary using xxd-format!
	augroup Binary1
	  au!
	  au BufReadPre   *.bmp let &bin=1
	  au BufReadPost  *.bmp if &bin | %!xxd
	  au BufReadPost  *.bmp set ft=xxd | endif
	  au BufWritePre  *.bmp if &bin | %!xxd -r
	  au BufWritePre  *.bmp endif
	  au BufWritePost *.bmp if &bin | %!xxd
	  au BufWritePost *.bmp set nomod | endif
	augroup END

	augroup Binary2
	  au!
	  au BufReadPre   *.264 let &bin=1
	  au BufReadPost  *.264 if &bin | %!xxd
	  au BufReadPost  *.264 set ft=xxd | endif
	  au BufWritePre  *.264 if &bin | %!xxd -r
	  au BufWritePre  *.264 endif
	  au BufWritePost *.264 if &bin | %!xxd
	  au BufWritePost *.264 set nomod | endif
	augroup END

" search visually selected
"vmap / y/<C-R>"<CR>

"reverse each line
":g/^/m0

" word-wise copy, past, cut
"noremap <A-c> viw"+y<ESC>
"noremap <A-v> "+gPb<ESC>
"noremap <A-x> viw"+x<ESC>

" list all encounters of current word
noremap <F12> [I
" list all encounters of current search
noremap <S-F12> :ilist!/<C-R>//<CR>
" remove ^@
" :%s/<ctrl>-v<ctrl>-@//g
" remove trailing white space
" :%s/\s\+$//g

" move among splits
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

"keep distinct lines
":sort u

"delete blank lines
" :g/^\s*$/d

" convert newline
" dos to unix
" :e ++ff=dos
" :setlocal ff=unix
" :w
" unix to dos
" :e ++ff=dos
" :w

" To enable the saving and restoring of screen positions.
let g:screen_size_restore_pos = 0

" To save and restore screen for each Vim instance.
" This is useful if you routinely run more than one Vim instance.
" For all Vim to use the same settings, change this to 0.
let g:screen_size_by_vim_instance = 0

if has("gui_running")
  function! ScreenFilename()
    if has('amiga')
      return "s:.vimsize"
    elseif has('win32')
      return $HOME.'\_vimsize'
    else
      return $HOME.'/.vimsize'
    endif
  endfunction

  function! ScreenRestore()
    " Restore window size (columns and lines) and position
    " from values stored in vimsize file.
    " Must set font first so columns and lines are based on font size.
    let f = ScreenFilename()
    if has("gui_running") && g:screen_size_restore_pos && filereadable(f)
      let vim_instance = (g:screen_size_by_vim_instance==1?(v:servername):'GVIM')
      for line in readfile(f)
        let sizepos = split(line)
        if len(sizepos) == 5 && sizepos[0] == vim_instance
          silent! execute "set columns=".sizepos[1]." lines=".sizepos[2]
          silent! execute "winpos ".sizepos[3]." ".sizepos[4]
          return
        endif
      endfor
    endif
  endfunction

  function! ScreenSave()
    " Save window size and position.
    if has("gui_running") && g:screen_size_restore_pos
      let vim_instance = (g:screen_size_by_vim_instance==1?(v:servername):'GVIM')
      let data = vim_instance . ' ' . &columns . ' ' . &lines . ' ' .
            \ (getwinposx()<0?0:getwinposx()) . ' ' .
            \ (getwinposy()<0?0:getwinposy())
      let f = ScreenFilename()
      if filereadable(f)
        let lines = readfile(f)
        call filter(lines, "v:val !~ '^" . vim_instance . "\\>'")
        call add(lines, data)
      else
        let lines = [data]
      endif
      call writefile(lines, f)
    endif
  endfunction

  if !exists('g:screen_size_restore_pos')
    let g:screen_size_restore_pos = 1
  endif
  if !exists('g:screen_size_by_vim_instance')
    let g:screen_size_by_vim_instance = 1
  endif
  autocmd VimEnter * if g:screen_size_restore_pos == 1 | call ScreenRestore() | endif
  autocmd VimLeavePre * if g:screen_size_restore_pos == 1 | call ScreenSave() | endif
endif

set foldmethod=marker

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
au BufReadPre  *.v   match OverLength /\%81v.\+/
au BufReadPre  *.vh  match OverLength /\%81v.\+/
au BufReadPre  *.vhd match OverLength /\%81v.\+/

" vimmux
" Prompt for a command to run
map ,vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map ,vl :VimuxRunLastCommand<CR>

" Inspect runner pane
map ,vi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map ,vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map ,vx :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map ,vz :call VimuxZoomRunner()<CR>

" open filename under cursor to a new tab
map gF :tabe <cfile><CR>

" save and execute result to right panel 
map \r :w<CR>:!tmux send-keys -t right 'ls' C-m<CR><CR>

" rip current module in netlist into new tab
map ,c <ESC>$?module<CR>yNw:tabe <C-R><C-W>.v<CR>pgg

" add runtime path
"set rtp+=~/local/bin/fzf

" " The Silver Searcher
" if executable('ag')
" "Use ag over grep
"     set grepprg=ag\ --nogroup\ --nocolor
"     " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"     let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"     " ag is fast enough that CtrlP doesn't need to cache
"     let g:ctrlp_use_caching = 0
" endif
" " ex: grep cabac h265 --cpp
" " ex: grep capture --verilog --vhdl
