====================
perfect-language-vim
====================

:Author:
    `Antoine Gagné <antoine.gagne.2@ulaval.ca>`_

.. contents::
    :backlinks: none

.. sectnum::

This repository contains code that will make ``vim`` or ``neovim`` detect and
highlight the syntax of the `Perfect language
<http://www.eschertech.com/product_documentation/Language%20Reference/LanguageReferenceManual.html>`_.

Requirements
============

The following are required for all the features to work correctly:

* A working Vim or Neovim installation with the syntax highlighting feature
  compiled
* The software to work with the Perfect language by Escher Technologies. This
  should normally provide an ``eschertool`` program.

Although the syntax highlighting will work on every platforms that
have Vim or Neovim compiled with the syntax highlighting feature, it is not
true of the ``:make`` command which depends on the availability of the
``eschertool`` command.

Even though the ``eschertool`` command comes with the Linux version, as I have
no machines with Windows, I can't tell whether this executable comes
with the installer on this OS.
However, assuming that the command is available and in your ``PATH``, then it
should work correctly when invoking the command ``:make`` from Vim or Neovim.

If it doesn't, check where the ``builtin.pdc`` and ``rubric.pdc`` were placed
by the installer and you can change the plugin variables
``g:perfect_builtin_file_path`` and
``g:perfect_prover_rule_declaration_file_path`` to their respective paths
according to the location of the previous files.

You can learn more about the ``eschertool`` command `here
<https://www.eschertech.com/product_documentation/User%20Guide/UserGuide.html#6.Command_syntax>`_.

Installation
============

The installation will differ according to the plugin manager you use (or if you
don't use one).
This section contains the instructions for some of them.

.. note:: This is only for some plugin managers but this plugin should work
   with any plugin manager.
   If you don't use any, it should work with Vim or Neovim built-in plugin
   management system given that it is correctly installed.

vim-plug
--------

If you use `vim-plug <https://github.com/junegunn/vim-plug>`_ (see this link
for how to install it), you can place this in your ``.vimrc``:

.. code-block:: vim

    Plug 'AntoineGagne/perfect-language-vim'

After adding this line, you can launch ``vim`` and run ``:PlugInstall``.
The plugin will then be used when opening files with ``.pd`` extensions.

Vundle
------

If you use `Vundle <https://github.com/VundleVim/Vundle.vim>`_ (see this link
for how to install it), you can place this in your ``.vimrc``:

.. code-block:: vim

    Plugin 'AntoineGagne/perfect-language-vim'

After adding this line, you can launch ``vim`` and run ``:PluginInstall``.
The plugin will then be used when opening files with ``.pd`` extensions.

Usage
=====

Compiling, Verifying and Checking
---------------------------------

This plugin sets the ``makeprg`` variable.
This means you can simply use ``:make`` when editing a Perfect file and it will
automatically build, verify and check the current file.
This also means that you can use the QuickFix list (see ``:help quickfix.txt``
for more information) to quickly jump to errors thrown at the compilation.

By default, the output of these checks will be in the ``build`` folder.
You can configure this by setting the value of the variable
``g:perfect_build_output_directory``.

:Example:

Assuming we are editing a ``.pd`` file, this command

.. code-block:: vim

    :make

will compile, verify and check the current file.

Global Options
==============

.. class:: globaloptions

+-------------------------------------------------+-------------------------------------------------------+--------+-----------------------------------------------------------------------+
| Flag                                            | Default                                               | Type   | Description                                                           |
+=================================================+=======================================================+========+=======================================================================+
| ``g:perfect_build_output_directory``            | "build"                                               | string | Path where the checks will be outputted to                            |
+-------------------------------------------------+-------------------------------------------------------+--------+-----------------------------------------------------------------------+
| ``g:perfect_builtin_file_path``                 | "/opt/escher/verificationstudio6/builtin/builtin.pdc" | string | Path to where the file that contains the *builtin* declarations is    |
+-------------------------------------------------+-------------------------------------------------------+--------+-----------------------------------------------------------------------+
| ``g:perfect_prover_rule_declaration_file_path`` | "/opt/escher/verificationstudio6/builtin/rubric.pdc"  | string | Path to where the file that contains the prover rules declarations is |
+-------------------------------------------------+-------------------------------------------------------+--------+-----------------------------------------------------------------------+

Documentation
=============

This plugin comes with vimdoc that you can access with the command ``:help
perfect-language-vim.txt``.

FAQ
===

Which operating systems does this plugin support?
-------------------------------------------------

For the basic syntax highlighting, any OS that can run Vim or Neovim will work.

For the compilation, verification and checks, you will need an OS on which
``eschertool`` can be installed (the Linux version is supported but I haven't
tested on Windows).
