;;; init-syntaxcheck.el -*- lexical-binding: t no-byte-compile: t -*-

(use-package flycheck
  :ensure t
  :hook (after-init . global-flycheck-mode))

(use-package flymake-posframe
  :ensure nil
  :hook (flymake-mode . flymake-posframe-mode))


(provide 'init-syntaxcheck)
