;;; init-keymap.el -*- lexical-binding: t no-byte-compile: t -*-

;; super-a 全选
(global-set-key (kbd "s-a") 'mark-whole-buffer)

;; super-c 复制
(global-set-key (kbd "s-c") 'kill-ring-save)

;; super-s 保存
(global-set-key (kbd "s-s") 'save-buffer)

;; super-v 粘贴
(global-set-key (kbd "s-v") 'yank)

;; super-z 撤消
(global-set-key (kbd "s-z") 'undo)

;; super-x 剪切
(global-set-key (kbd "s-x") 'kill-region)

;; <C-w> 删除一个词
(global-set-key (kbd "C-w") 'backward-kill-word)

;; super-l 跳到指定行
(global-set-key (kbd "s-l") 'goto-line)

(defun only-current-buffer ()
  (interactive)
  (mapc 'kill-buffer (cdr (buffer-list (current-buffer)))))
;; <C-x><C-b> 关闭其它 buffer，覆盖了默认的列出 buffer 操作
(global-set-key (kbd "C-x C-b") 'only-current-buffer)

(defun close-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))
;; <C-x><C-c> 关闭所有 buffer，覆盖了默认的退出操作
(global-set-key (kbd "C-x C-c") 'close-all-buffers)

(use-package which-key
  :hook (after-init . which-key-mode)
  :ensure t
  :init
  (setq which-key-side-window-location 'bottom))

(provide 'init-keymap)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-keymap.el ends here
