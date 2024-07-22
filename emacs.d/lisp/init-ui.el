;;; init-ui.el -*- lexical-binding: t no-byte-compile: t -*-

(use-package gruvbox-theme
  :init
  (load-theme 'gruvbox-dark-medium t))

; (use-package atom-one-dark-theme
;   :init
;   (load-theme 'atom-one-dark t))

; (use-package solarized-theme
;   :init
;   (load-theme 'solarized-dark t))

; (use-package seoul256-theme
;   :ensure t
;   :config
;   (setq seoul256-background 238)
;   (load-theme 'seoul256 t))

;; 关闭欢迎页面
(setq inhibit-splash-screen t)

;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 更改光标的样式
(setq-default cursor-type 'bar)

;; 在状态栏显示当前光标所在的函数
(which-function-mode t)

;; 自动全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 设置标签栏信息
(setq frame-title-format
      `((buffer-file-name "%f" "%b")
        ,(format " - GNU Emacs %s" emacs-version)))

;; 在编程模式下启用 smartparens
(use-package smartparens
  :ensure t
  :config
  :hook (prog-mode . smartparens-mode))

;; 在编程模式下启用 rainbow-delimiters
(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

;; 在编程模式下启用 highlight-indent-guides
(use-package highlight-indent-guides
  :ensure t
  :init
  ;; 前两级不显示
  (defun my-highlighter (level responsive display)
  (if (> 2 level)
      nil
    (highlight-indent-guides--highlighter-default level responsive display)))
  :config
  (setq highlight-indent-guides-method 'column)
  (setq highlight-indent-guides-highlighter-function 'my-highlighter)
  :hook (prog-mode . highlight-indent-guides-mode))

(use-package hl-todo
  :ensure t
  :hook (after-init . global-hl-todo-mode)
  :config
  (dolist (keyword '("BUG" "DEFECT" "ISSUE"))
    (add-to-list 'hl-todo-keyword-faces `(,keyword . "#e45649")))
  (dolist (keyword '("TRICK" "WORKAROUND"))
    (add-to-list 'hl-todo-keyword-faces `(,keyword . "#d0bf8f")))
  (dolist (keyword '("DEBUG" "STUB"))
    (add-to-list 'hl-todo-keyword-faces `(,keyword . "#7cb8bb"))))

(use-package writeroom-mode
  :init
  :config
  (defun distraction-free ()
    "Distraction-free writing environment"
    (interactive)
    (if (equal writeroom-mode nil)
        (writeroom-mode t)
      (progn
        (writeroom-mode 0))))
  :bind (("<f9>" . distraction-free)))

(use-package spaceline
  :ensure t
  :config
  (spaceline-spacemacs-theme)
  ;; 不显示 buffer 的大小
  (setq spaceline-buffer-size-p nil))

(provide 'init-ui)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-ui.el ends here
