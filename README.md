vim-trenni
==========

Syntax highlighting for the [trenni](https://github.com/ioquatix/trenni) xml
templating language.

Installation
------------

I recommend installation with [dein.vim](https://github.com/Shougo/dein.vim).
Simply make your `~/.vimrc` or your `~/.config/nvim/init.vim` look something like this:

```vim
if &compatible
  set nocompatible
endif
set runtimepath+={path to dein.vim directory}

if dein#load_state({path to plugin base path directory})
  call dein#begin({path to plugin base path directory})

  call dein#add({path to dein.vim directory})
	" important bit
	call dein#add('huba/vim-trenni')
  ...

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
```

Of course it can also be installed manually by cloning/downloading the repo and
copying the files from `ftdetect/` and `syntax/` into the corresponding subdirectories
in your vim runtime's path.

Possible Improvements
---------------------

* javascript syntax highlighting inside `<script>` tag.

License
-------

MIT License

Copyright (c) 2017 Huba Z. Nagy

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
