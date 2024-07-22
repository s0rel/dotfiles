;;; init.el -*- lexical-binding: t no-byte-compile: t -*-

(when (version< emacs-version "28.2")
  (error "This requires Emacs 28.2 and above!"))

(add-to-list 'load-path "~/.emacs.d/lisp/")


(require 'custom)
(require 'init-function)
(require 'init-const)
(require 'init-packages)

(require 'init-basic)
(require 'init-better-default)
(require 'init-completion)
(require 'init-dictionary)
(require 'init-git)
(require 'init-keymap)
(require 'init-markdown)
(require 'init-org)
(require 'init-snippets)
(require 'init-syntaxcheck)
(require 'init-tool)
(require 'init-ui)
(require 'init-writing)







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
