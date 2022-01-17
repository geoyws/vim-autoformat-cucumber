vim-autoformat-cucumber
====================

`vim-autoformat-cucumber` provides simple autoformatting of Cucumber files.
This repo was forked from `KurtPreston/vim-autoformat-rails` and adapted to follow Alexander Krechik's VSCode Cucumber plugin's formatting style.
Thanks Kurt for the work! I had to make sure that my team and I were formatting the same way and had to fork this. 😅

Installation
------------
If using Vundle, then add the following line to your ```vimrc``` file:

```
Bundle 'geoyws/vim-autoformat-cucumber'
```

If not using Vundle, you can install it by copying the repo to your ```~/vim/bundle``` folder.

Autoformatting within VIM
--------------------------
To call the autoformatter on a document, just type **\==** (backslash, equals, equals).

Autoformatting from console
------------------
If you want to use vim-autoformat-cucumber to format multiple files, you can use the included **autoformat** binary.  Just copy it to your path (i.e. ```/usr/local/bin```), then you can run commands such as:

```
autoformat FILENAME # Format FILENAME
autoformat '*.feature'   # Format all Cucumber files in the directory
```

Customization
-------------
Most of the formatting rules are simply regex expressions.  If you want to change/remove any the behavior, just add/remove a regex line from the ```vim-autoformat-cucumber.vim``` file.

