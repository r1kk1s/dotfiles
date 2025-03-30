jall: install nvim-configure deps-install

TAGS := all

install:
	./install.sh

nvim-configure:
	rm -rf ~/.config/nvim
	rm -rf ~/.local/share/nvim
	rm -rf ~/.local/state/nvim
	rm -rf ~/.cache/nvim

	ln -snf $(PWD)/nvim ~/.config/nvim

deps-install: deps-brew deps-pip deps-npm deps-pip deps-go

deps-pip:
	pipx install pynvim

deps-npm:
	npm install -g neovim markdown-toc markdownlint-cli2
	npm install -g prettier eslint eslint-plugin-import eslint-plugin-node
	npm install -g yaml-language-server markuplint markdownlint-cli bash-language-server jsonlint
	npm install -g dockerfile-language-server-nodejs

deps-brew:
	brew install biome pipx

deps-go:
	# go install honnef.co/go/tools/cmd/staticcheck@latest
	# GO111MODULE=on go install golang.org/x/tools/gopls@latest

deps-luarock:
	# luarocks install luacheck

