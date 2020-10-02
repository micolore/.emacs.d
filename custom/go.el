;;; go.el --- Go rleated setup                       -*- lexical-binding: t; -*-
;; Copyright (C) 2020  vagrant

;; dev language
;; golang 
(use-package go-mode
  :ensure t
  :mode (("\\.go\\'" . go-mode))
  :hook ((before-save . gofmt-before-save))
  :config
  (setq gofmt-command "goimports")
  (use-package company-go
    :ensure t
    :config
    (add-hook 'go-mode-hook (lambda()
                              (add-to-list (make-local-variable 'company-backends)
                                           '(company-go company-yasnippet))))
    )
  (use-package go-eldoc
    :ensure t
    :hook (go-mode . go-eldoc-setup)
    )
  (use-package go-guru
    :ensure t
    :hook (go-mode . go-guru-hl-identifier-mode)
    )
  (use-package go-rename
    :ensure t)
  )

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))


(provide 'go)
