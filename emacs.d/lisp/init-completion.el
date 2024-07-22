;;; init-completion.el -*- lexical-binding: t no-byte-compile: t -*-

;; 开启全局 Company 补全，使用 Ctrl-n 和 Ctrl-p 进行上下选择
(use-package company
  :bind (:map company-active-map
	      ("C-n" . 'company-select-next)
	      ("C-p" . 'company-select-previous))
  :init
  (global-company-mode t)
  :config
  (setq company-idle-delay 0)
  ;; 至少匹配两个单词后再开始补全
  (setq company-minimum-prefix-length 2)
  ;; 循环选择
  (setq company-selection-wrap-around t)
  ;; 配置补全的后端
  (setq company-backends
        '((company-files company-keywords company-capf company-yasnippet)
          (company-abbrev company-dabbrev))))

; (use-package company-box
;   :hook (company-mode . company-box-mode))

(provide 'init-completion)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-completion.el ends here
