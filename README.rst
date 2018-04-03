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

Installation
============

The installation will differ according to the plugin manager you use (or if you
don't use one).
This section contains the instructions for some of them.

vim-plug
--------

You can place this in your ``.vimrc``:

.. code-block:: vim

    Plug 'AntoineGagne/perfect-language-vim'

Vundle
------

You can place this in your ``.vimrc``:

.. code-block:: vim

    Plugin 'AntoineGagne/perfect-language-vim'

Usage
=====

Compiling, Verifying and Checking
---------------------------------

This plugin sets the ``makeprg`` variable.
This means you can simply use ``:make`` and it will automatically build, verify
and check the current file.
This also means that you can use the QuickFix list to quickly jump to errors
thrown at the compilation.

Build Directory
~~~~~~~~~~~~~~~

By default, the output of these checks will be in the ``build`` folder.
You can configure this by setting the value of the variable
``g:perfect_build_output_directory``.

Builtin Declarations File
~~~~~~~~~~~~~~~~~~~~~~~

This plugin uses ``/opt/escher/verificationstudio6/builtin/builtin.pdc`` as the
default file path to the *builtin* declarations.
You can configure this with the ``g:perfect_builtin_file_path`` variable.

Prover Rules Declarations File
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This plugin uses ``/opt/escher/verificationstudio6/builtin/rubric.pdc`` as the
default file path to the prover rules declaration.
You can configure this with the ``g:perfect_prover_rule_declaration_file_path``
variable.
