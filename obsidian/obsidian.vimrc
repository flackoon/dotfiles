set clipboard=unnamed

unmap <Space>

"Keybord remaps
nnoremap <down> <Nop>
nnoremap <up> <Nop>
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

" Folding
exmap togglefold obcommand editor:toggle-fold
nmap <Space>. :togglefold<CR>
exmap foldall obcommand editor:fold-all
nmap <Space>- :foldall<CR>

" previous tab
nnoremap gp gT
nnoremap gn gt
nnoremap go :tabnew<Space>
nnoremap <silent> <Space>bc :BD!<CR>
nnoremap <Space>bs :w<CR>
nnoremap <Space>n :bn<CR>
nnoremap <Space>p :bp<CR>
nnoremap <Space>bl <C-O>
nnoremap <Space>qa :%bd\|e#\|bn\|BD!<CR>


exmap focusright      obcommand editor:focus-right
exmap focusleft       obcommand editor:focus-left
exmap focustop        obcommand editor:focus-top
exmap focusbottom     obcommand editor:focus-bottom
exmap contextmenu     obcommand editor:context-menu
exmap tabnext         obcommand workspace:next-tab
exmap tabprev         obcommand workspace:previous-tab
exmap togglesidebar   obcommand app:toggle-left-sidebar
exmap splitvertical   obcommand workspace:split-vertical
exmap splithorizontal obcommand workspace:split-horizontal
exmap close           obcommand workspace:close
exmap reopen          obcommand workspace:undo-close-pane
exmap find            obcommand global-search:open
exmap goback          obcommand app:go-back
exmap goforward       obcommand app:go-forward
exmap openfile        obcommand switcher:open
exmap revealfile      obcommand file-explorer:reveal-active-file

nmap <C-h>        :focusleft<CR>
nmap <C-l>        :focusright<CR>
nmap <C-j>        :focusbottom<CR>
nmap <C-k>        :focustop<CR>
nmap <Space>n     :tabnext<CR>
nmap <Space>p     :tabprev<CR>
nmap <Space>e     :togglesidebar<CR>
nmap <C-w>v       :splitvertical<CR>
nmap <C-w>s       :splithorizontal<CR>
nmap <Space>bc    :close<CR>
nmap <Space>bl    :reopen<CR>
nmap <Space>s     :find<CR>
nmap K            :contextmenu<CR>
nmap <Space>f     :openfile<CR>

nmap <C-o>        :goback<CR>
nmap <C-i>        :goforward<CR>
nmap <Space>1     :revealfile<CR>



" editor:follow-link
" editor:open-link-in-new-leaf
" editor:open-link-in-new-split
" editor:open-link-in-new-window
" editor:focus-top
" editor:focus-bottom
" editor:focus-left
" editor:focus-right
" workspace:toggle-pin
" workspace:split-vertical
" workspace:split-horizontal
" workspace:toggle-stacked-tabs
" workspace:edit-file-title
" workspace:copy-path
" workspace:copy-url
" workspace:undo-close-pane
" workspace:export-pdf
" editor:rename-heading
" workspace:open-in-new-window
" workspace:move-to-new-window
" workspace:next-tab
" workspace:goto-tab-1
" workspace:goto-tab-2
" workspace:goto-tab-3
" workspace:goto-tab-4
" workspace:goto-tab-5
" workspace:goto-tab-6
" workspace:goto-tab-7
" workspace:goto-tab-8
" workspace:goto-last-tab
" workspace:previous-tab
" workspace:new-tab
" leader-hotkeys-obsidian:register-modal
" app:go-back
" app:go-forward
" app:open-vault
" workspace:close
" workspace:close-window
" workspace:close-others
" workspace:close-tab-group
" workspace:close-others-tab-group
" app:delete-file
" app:toggle-left-sidebar
" app:toggle-right-sidebar
" app:toggle-default-new-pane-mode
" app:open-help
" window:toggle-always-on-top
" file-explorer:new-file
" file-explorer:new-file-in-current-tab
" file-explorer:new-file-in-new-pane
" open-with-default-app:open
" file-explorer:move-file
" file-explorer:duplicate-file
" open-with-default-app:show
" editor:open-search
" editor:open-search-replace
" editor:focus
" editor:toggle-fold-properties
" editor:toggle-fold
" editor:fold-all
" editor:unfold-all
" editor:fold-less
" editor:fold-more
" editor:insert-wikilink
" editor:insert-embed
" editor:insert-link
" editor:insert-tag
" editor:set-heading
" editor:set-heading-0
" editor:set-heading-1
" editor:set-heading-2
" editor:set-heading-3
" editor:set-heading-4
" editor:set-heading-5
" editor:set-heading-6
" editor:toggle-bold
" editor:toggle-italics
" editor:toggle-strikethrough
" editor:toggle-highlight
" editor:toggle-code
" editor:toggle-inline-math
" editor:toggle-blockquote
" editor:toggle-comments
" editor:toggle-bullet-list
" editor:toggle-numbered-list
" editor:toggle-checklist-status
" editor:cycle-list-checklist
" editor:insert-callout
" editor:insert-codeblock
" editor:insert-mathblock
" editor:swap-line-up
" editor:swap-line-down
" editor:attach-file
" editor:delete-paragraph
" editor:toggle-spellcheck
" editor:context-menu
" file-explorer:open
" file-explorer:reveal-active-file
" global-search:open
" switcher:open
" outgoing-links:open
" outgoing-links:open-for-current
" tag-pane:open
" command-palette:open
" outline:open
" outline:open-for-current
" file-recovery:open
" editor:toggle-source

