;;; init-tools.el -*- lexical-binding: t no-byte-compile: t -*-

(use-package visual-regexp
  :defer
  :commands (vr/replace vr/query-replace))

(use-package visual-regexp-steroids
  :defer
  :commands (vr/select-replace vr/select-query-replace)
  :init
  (progn
    (define-key global-map (kbd "C-c C-r") 'vr/replace)
    (define-key global-map (kbd "C-c C-q") 'vr/query-replace)))

(use-package iedit
  :ensure t
  :init
  (setq iedit-toggle-key-default nil)
  :config
  (define-key iedit-mode-keymap (kbd "M-h") 'iedit-restrict-function)
  (define-key iedit-mode-keymap (kbd "M-i") 'iedit-restrict-current-line))


(provide 'init-tool)
