
# Installation

## Global Composer packages
- intall Composer systemwide (TODO, add instructions for that)
- Then execute the lines below

The installation of these dotfiles, will make sure that the `vendor/bin` directory from `~/.composer` will be in `$PATH` so all packages installed throught the composer.json will be available systemwide


	mkdir ~/.composer
	ln -s ~/dotfiles/composer.json ~/.composer.json
	ln -s ~/dotfiles/composer.lock ~/.composer.lock
	
	