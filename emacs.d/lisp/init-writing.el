;;; init-writing.el -*- lexical-binding: t no-byte-compile: t -*-

(use-package pangu-spacing
  :defer t
  :init (progn (global-pangu-spacing-mode 1)
               ;; Always insert `real' space in org-mode.
               (add-hook 'org-mode-hook
                         (lambda ()
                           (setq-local pangu-spacing-real-insert-separtor t)))))

(provide 'init-writing)
