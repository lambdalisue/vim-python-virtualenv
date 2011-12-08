******************************************
 vim-python-virtualenv
******************************************

This plugin is for using `virtualenv <http://pypi.python.org/pypi/virtualenv>`_ within Vim.
It activate the virtualenv and add the path to ``sys.path``

Also this plugin save virtualenv name to ``pythonworkon`` variable of vim.


Required
================
Vim compiled with ``+python``


How to install
============================
Using `vundle <https://github.com/gmarik/vundle>`_ or `pathogen <http://www.vim.org/scripts/script.php?script_id=2332>`_ is recommended or simply extract to your vim directory


Usage
==========
This plugin save virtualenv name to ``pythonworkon`` variable of vim so if you want to check the name of virtualenv in status line, add the following code to your ``.vimrc``::

    " Apply g:pythonworkon to statusline
let &statusline='%F%m%r%h%w [FORMAT=%{&ff}] [ENC=%{&fileencoding}] [TYPE=%Y] [ASCII=\%03.3b] [HEX=\%02.2B] [POS=%04l,%04v][%p%%] [LEN=%L] %= [WORKON=%{pythonworkon}]'

And you will see something like below

.. Image:: http://hashnote.net/storage/5/preview/
