;;; init-better-default.el -*- lexical-binding: t no-byte-compile: t -*-

;; 自动加载被外部修改过的文件
(global-auto-revert-mode 1)

;; 使用fd 替换 find
(when (executable-find "fd")
  (use-package fd-dired))

(use-package dired
  :ensure nil
  :config
  (setq dired-recursive-deletes 'always)
  (setq delete-by-moving-to-trash t)
  (setq dired-dwim-target t)
  (setq dired-listing-switches "-alh")
  (setq dired-guess-shell-alist-user
        '(("\\.csv\\'" "open")
          ("\\.html?\\'" "open")
          ("\\.md\\'" "open")))
    (setq dired-recursive-deletes 'always)
    (setq dired-recursive-copies 'always))

(use-package dired-x
  :ensure nil
  :demand t
  :commands (dired-jump)
  :config
  (setq dired-omit-files
        (concat dired-omit-files "\\|^.DS_Store$\\|^.projectile$\\|\\.js\\.meta$\\|\\.meta$")))

(use-package smartparens
  :init
  (smartparens-global-mode t)
  (sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)
  (sp-local-pair 'emacs-lisp-mode "`" nil :actions nil)
  (sp-local-pair 'lisp-interaction-mode "'" nil :actions nil)
  :config
    (sp-with-modes
        '(c-mode c++-mode clojure-mode go-mode lua-mode markdown-mode org rust-mode scala-mode text-mode)
      (sp-local-pair "{" nil :post-handlers '(:add ("||\n[i]" "RET")))))

(use-package hungry-delete
  :init
  :hook (after-init . global-hungry-delete-mode)
  :init (setq hungry-delete-chars-to-skip " \t\f\v"
              hungry-delete-except-modes
              '(help-mode minibuffer-mode minibuffer-inactive-mode calc-mode)))

(use-package goto-line-preview
  :ensure
  :init
  (global-set-key [remap goto-line] 'goto-line-preview))

;; <M-/> 注释/取消注释选中的区域
(use-package comment-dwim-2
  :ensure t
  :bind
  (("M-/" . comment-dwim-2))
  :config
  (setq cd2/region-command 'cd2/comment-or-uncomment-region))

(use-package helpful
  :ensure t
  :init
  (progn
    ;; Note that the built-in `describe-function' includes both functions
    ;; and macros. `helpful-function' is functions only, so we provide
    ;; `helpful-callable' as a drop-in replacement.
    (global-set-key (kbd "C-h f") #'helpful-callable)

    (global-set-key (kbd "C-h v") #'helpful-variable)
    (global-set-key (kbd "C-h k") #'helpful-key)
    ;; Lookup the current symbol at point. C-c C-d is a common keybinding
    ;; for this in lisp modes.
    (global-set-key (kbd "C-c C-d") #'helpful-at-point)

    ;; Look up Functions (excludes macros).
    ;;
    ;; By default, C-h F is bound to `Info-goto-emacs-command-node'. Helpful
    ;; already links to the manual, if a function is referenced there.
    (global-set-key (kbd "C-h F") #'helpful-function)

    ;; Look up Commands.
    ;;
    ;; By default, C-h C is bound to describe `describe-coding-system'. I
    ;; don't find this very useful, but it's frequently useful to only
    ;; look at interactive functions.
    (global-set-key (kbd "C-h C") #'helpful-command)))


(provide 'init-better-default)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-better-default.el ends here
