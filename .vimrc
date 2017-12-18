"version 6.1
version 7.0
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
set autochdir
set mousefocus
"set gfn=bitstream\ vera\ sans\ mono\ 12
set gfn=bitstream\ vera\ sans\ mono\ 16
"set syntax=vhdl
set tags=tags;/

if has("terminfo")
  set t_Co=16
  set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
  set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
else
  set t_Co=16
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

set term=xterm

"if has("gui")
"  "set nu
"  colors wombat
"  set guioptions-=T
"else
"  "colors wombat
"endif

syntax on
highlight Search term = reverse ctermfg=5 ctermbg=7

"map z <C-F>
"map s <C-B>
map [ {
map ] }
map <F12> :unm [<CR>
map <S-F12> :map [ {<CR>

map ,h o-----------------------------------------------------------------------------<ESC>
map ;; :w<CR>

map gr :!grep -Hn <cword> %:p:h/*<CR>
map gR :vimgrep /<C-R><C-W>/ * <CR>
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
map ,K ,p,ii XHCLK'event and XHCLK = '1' <ESC>2k$iXHCLK<ESC>3jddk<ESC>
map ,k ,p,ii XHRSTN = '0'<ESC>jxaif XHCLK'event and XHCLK = '1' then<ESC>O<ESC>3k$iXHRSTN, XHCLK<ESC>4j<ESC>oif then<CR>else<CR>end if;<ESC>2k3>>wiXHVopFire = '1' <ESC>o<TAB> <ESC>jRif then<ESC>k


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

"set term=builtin_xterm
set mouse=
" go component
map gc /t <C-R><C-W>\s*$<CR>
" go instance
map gi /u.*<C-R><C-W>\s*$<CR>
" go file
"map gl wb"2ywq:ie <Esc>"2pbi*<Esc>lguwea*.vhd<Esc><CR>
map gl wb"2ywq:ie <Esc>"2pbi*<Esc>lguwea.v*<Esc><CR>
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

" count the number of matches
" map =s :%s/<C-R><C-W>/&/g<CR>
map =s :%s/<C-R><C-W>//gn<CR>
map =S :,$s/<C-R><C-W>//gn<CR>

" align <= 
map ,= 0f<100i <ESC>33\|dwj
" format port declartion line
map ,d <ESC>06i <ESC>5\|dwf:20i <ESC>27\|dw2a <ESC>dwguwe3a <ESC>33\|dw0j

" substitute among files :h argdo
" tab switch
map <F1> :tabp<CR> 
map <F2> :tabn<CR> 
map <F7> :tabp<CR> 
map <F8> :tabn<CR> 
map <F3> n
map <C-TAB> :tabn<CR>
map <C-S-TAB> :tabp<CR>
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
map <A-c> viw"+y
map <A-v> viw"+gPb
map <A-x> viw"+x

" list all encounters of current word
noremap <F12> [I
" remove ^@
" :%s/<ctrl>-v<ctrl>-@//g

" move among splits
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
au BufReadPre   *.v match OverLength /\%81v.\+/
set hlsearch

" The Silver Searcher
if executable('ag')
"Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif
" ex: grep cabac h265 --cpp
" ex: grep capture --verilog --vhdl
