#! /bin/sh
mkdir -p ~/.vim/pack/plugins/start/
git clone git@github.com:preservim/nerdtree.git ~/.vim/pack/plugins/start/nerdtree
git clone git@github.com:ctrlpvim/ctrlp.vim.git ~/.vim/pack/plugins/start/ctrlp.vim
git clone git@github.com:tpope/vim-surround.git ~/.vim/pack/plugins/start/vim-surround
git clone git@github.com:prettier/vim-prettier.git ~/.vim/pack/plugins/start/vim-prettier

# JavaScript support
git clone git@github.com:pangloss/vim-javascript.git ~/.vim/pack/plugins/start/vim-javascript
# TypeScript syntax
git clone git@github.com:leafgarland/typescript-vim.git ~/.vim/pack/plugins/start/typescript
# JS and JSX syntax
git clone git@github.com:maxmellon/vim-jsx-pretty.git ~/.vim/pack/plugins/start/vim-jsx-pretty

git clone --branch release git@github.com:neoclide/coc.nvim.git ~/.vim/pack/plugins/start/coc.nvim
cd ~/.vim/pack/plugins/start/coc.nvim
vim -c "helptags coc.nvim/doc/ | q"

git clone git@github.com:tomasiser/vim-code-dark.git ~/.vim/pack/plugins/start/vim-code-dark

