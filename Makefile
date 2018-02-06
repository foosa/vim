VIM=`which vim`		#/usr/bin/vim
GIT=`which git`		#/usr/bin/git
VUNDLE=https://github.com/VundleVim/Vundle.vim.git

.PHONY: install
install:
	mkdir -p $(HOME)/.vim
	mkdir -p $(HOME)/.vim/bundle
	if [ ! -d "$(HOME)/.vim/bundle/Vundle.vim" ]; then \
		$(GIT) clone $(VUNDLE) $(HOME)/.vim/bundle/Vundle.vim; \
	fi
	cp -r vim/snippets $(HOME)/.vim/
	cp -r vim/colors $(HOME)/.vim/
	cp -r vim/ftplugin $(HOME)/.vim/
	cp vimrc $(HOME)/.vimrc 
	$(VIM) -c VundleInstall -c quitall

.PHONY: update
update:
	$(VIM) -c VundleUpdate -c quitall

.PHONY: uninstall
uninstall:
	rm -rf $(HOME)/.vim
	rm -f $(HOME)/.vimrc

