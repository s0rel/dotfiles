;; init-org.el --- Initialize Org configurations.	-*- lexical-binding: t -*-

(use-package org
  :ensure t
  :init
  ;; agenda 里面时间块彩色显示
;; From: https://emacs-china.org/t/org-agenda/8679/3
(defun ljg/org-agenda-time-grid-spacing ()
  "Set different line spacing w.r.t. time duration."
  (save-excursion
    (let* ((background (alist-get 'background-mode (frame-parameters)))
           (background-dark-p (string= background "dark"))
           (colors (list "#1ABC9C" "#2ECC71" "#3498DB" "#9966ff"))
           pos
           duration)
      (nconc colors colors)
      (goto-char (point-min))
      (while (setq pos (next-single-property-change (point) 'duration))
        (goto-char pos)
        (when (and (not (equal pos (point-at-eol)))
                   (setq duration (org-get-at-bol 'duration)))
          (let ((line-height (if (< duration 30) 1.0 (+ 0.5 (/ duration 60))))
                (ov (make-overlay (point-at-bol) (1+ (point-at-eol)))))
            (overlay-put ov 'face `(:background ,(car colors)
                                                :foreground
                                                ,(if background-dark-p "black" "white")))
            (setq colors (cdr colors))
            (overlay-put ov 'line-height line-height)
            (overlay-put ov 'line-spacing (1- line-height))))))))
  :config
  ;; 添加关键词，并设置适当的颜色高亮
  (setq org-todo-keywords '((sequence "TODO" "DOING" "DONE" "ABORTED")))
  (setq org-todo-keyword-faces '(("DOING" . "yellow") ("ABORTED" . "RED")))
  ;; 增加状态选择
  (setq org-use-fast-todo-selection t)
  (setq org-todo-keywords '((sequence "TODO(t)" "DOING(i)" "|" "DONE(d)" "ABORTED(a)")))
  ;; 添加任务依赖
  (setq org-enforce-todo-dependencies t)
  ;; 添加时间戳
  (setq org-log-done 'time)
  ;; 添加层级缩进
  (setq org-startup-indented t)
  (add-hook 'org-agenda-finalize-hook #'ljg/org-agenda-time-grid-spacing))

(use-package org-bullets
  :ensure t
  :config
  ;; 设置 bullet list
  (setq org-bullets-bullet-list '("☰" "☱" "☲" "☴" "☷"))
  (add-hook 'org-mode-hook 'org-bullets-mode))

(provide 'init-org)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-org.el ends here
