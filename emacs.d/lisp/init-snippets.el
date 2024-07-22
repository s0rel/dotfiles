;;; init-snippets.el -*- lexical-binding: t no-byte-compile: t -*-

(use-package yasnippet
  :ensure t
  :hook (prog-mode . yas-minor-mode)
  :init
  :config
  (setq hippie-expand-try-functions-list
        '(yas/hippie-try-expand
          try-complete-file-name-partially
          try-expand-all-abbrevs
          try-expand-dabbrev
          try-expand-dabbrev-all-buffers
          try-expand-dabbrev-from-kill
          try-complete-lisp-symbol-partially
          try-complete-lisp-symbol)))

(use-package yasnippet-snippets
  :ensure t
  :after yasnippet)

(provide 'init-snippets)
