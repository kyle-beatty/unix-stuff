" Make it easier to add lines to the ftplugin while editing a file
nnoremap <localleader>ev :split ~/.vim/ftplugin/tex.vim<cr>
nnoremap <localleader>sv :source ~/.vim/ftplugin/tex.vim<cr>

" Does the same as above but for kylemath.sty
nnoremap <localleader>ep :split /Users/kyle/Library/texmf/tex/latex/kylemath.sty<cr>

" TEMPLATES

" for a list enumerated by numbers
inoremap \list <esc>:r ~/.vim/templates/tex/list.tex<cr>/% START HERE<cr>c$
" for a list enumerated by letters
inoremap \alphalist <esc>:r ~/.vim/templates/tex/alphalist.tex<cr>/% START HERE<cr>c$
" for a series of equations
inoremap \eqq <esc>:r ~/.vim/templates/tex/equation.tex<cr>jj^i
" for a graph
inoremap \fig <esc>:r ~/.vim/templates/tex/tikz_graph.tex<cr>/START HERE<cr>0c$
" for split cases in a function/formula
inoremap \cas <cr><esc>k$:r ~/.vim/templates/tex/cases.tex<cr>/START HERE<cr>^cf,
" for a table
inoremap \tab <cr><esc>k$:r ~/.vim/templates/tex/table.tex<cr>/c <cr>
" for a claim/proof pair
inoremap \clap <esc>:r ~/.vim/templates/tex/clap.tex<cr>/START HERE<cr>^c$
" for a matrix
inoremap \mtx <esc>:r ~/.vim/templates/tex/matrix.tex<cr>/START HERE<cr>^c$

" restatable environments
" conjecture
inoremap \conj <esc>:r~/.vim/templates/tex/conj.tex<cr>/START HERE<cr>0fSci{
" corollary
inoremap \cor <esc>:r ~/.vim/templates/tex/cor.tex<cr>/START HERE<cr>0fSci{
" definition
inoremap \def <esc>:r ~/.vim/templates/tex/def.tex<cr>/START HERE<cr>0fSci{
" lemma
inoremap \lem <esc>:r ~/.vim/templates/tex/lem.tex<cr>/START HERE<cr>0fSci{
" proposition
inoremap \prop <esc>:r ~/.vim/templates/tex/prop.tex<cr>/START HERE<cr>0fSci{
" theorem
inoremap \thm <esc>:r ~/.vim/templates/tex/thm.tex<cr>/START HERE<cr>0fSci{

" for problem sets
"nnoremap <localleader>hw :0r ~/.vim/templates/tex/hw.tex<cr>/Problem Set X<cr>fXcw
"nnoremap <localleader>hwp :0r ~/.vim/templates/tex/hw.tex<cr>/COURSE<cr>cwProbability<esc><cr>?Problem Set X<cr>fXcw
"nnoremap <localleader>hwa :0r ~/.vim/templates/tex/hw.tex<cr>/COURSE<cr>cwAbstract Algebra<esc><cr>?Problem Set X<cr>fXcw
"nnoremap <localleader>hwt :0r ~/.vim/templates/tex/hw.tex<cr>/COURSE<cr>cwTheory of Computation<esc><cr>?Problem Set X<cr>fXcw
"nnoremap <localleader>hwg :0r ~/.vim/templates/tex/hw.tex<cr>/COURSE<cr>cwGraph Theory<esc><cr>?Problem Set X<cr>fXcw
" nnoremap <localleader>hwm :0r ~/.vim/templates/tex/hw.tex<cr>/COURSE<cr>cwMatrix Analysis<esc><cr>?Homework X<cr>fXcw
" nnoremap <localleader>hwc :0r ~/.vim/templates/tex/hw.tex<cr>/COURSE<cr>cwIntroduction to Convexity<esc><cr>?Homework X<cr>fXcw
" nnoremap <localleader>hwp :0r ~/.vim/templates/tex/hw.tex<cr>/COURSE<cr>cwProbability Theory I<esc><cr>?Homework X<cr>fXcw
" nnoremap <localleader>hwn :0r ~/.vim/templates/tex/hw.tex<cr>/COURSE<cr>cwNonlinear Optimization II<esc><cr>?Homework X<cr>fXcw
" nnoremap <localleader>hwh :0r ~/.vim/templates/tex/hw.tex<cr>/COURSE<cr>cwHigh-Dimensional Approximation<esc><cr>?Homework X<cr>fXcw
" nnoremap <localleader>hws :0r ~/.vim/templates/tex/hw.tex<cr>/COURSE<cr>cwMathematical Statistics<esc><cr>?Homework X<cr>fXcw
nnoremap <localleader>hwr :0r ~/.vim/templates/tex/hw.tex<cr>/COURSE<cr>cwRandom Matrix Theory<esc><cr>?Homework X<cr>fXcw
nnoremap <localleader>hws :0r ~/.vim/templates/tex/hw.tex<cr>/COURSE<cr>cwManifold Learning for Subsequent Inference<esc><cr>?Homework X<cr>fXcw


" This type of substitution is good for things not permanent enough
" to go in kylemath.sty or to more quickly write tex that's still usable
" by others without my package
inoremap \grk \Z_2 \times \Z_{2k}
inoremap \grp \mathbb{Z}_2 \times \mathbb{Z}_{2k}
inoremap \gr8 \Z_2 \times \Z_{s^2 - 8}
inoremap \gry \Z_2 \times \Z_{2(k-y)}
inoremap \grs \Z_2 \times \Z_{s^2 - s}
inoremap \grf \Z_4 \times \Z_{4k}
inoremap \half \Z_2 \times \{0, 1, \ldots, \frac{s^2 -1}{2} - 1\}
inoremap \span \langle (1, x) \rangle
inoremap \lat \Z^2([0,s])
inoremap \seq \frac{3n+2}{n+3}
