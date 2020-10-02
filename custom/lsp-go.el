;;; lsp-go.el --- Golang settings

;;; Commentary:
;;; (c)

;;; Code:

(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))

(use-package go-mode
  :hook (go-mode . lsp-go-install-save-hooks)
  :config
  ;; go-fill-struct
  (use-package go-fill-struct)
  (use-package go-impl)
  (use-package go-gen-test)
  (use-package go-tag))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))


(provide 'lsp-go)
;;; lsp-go.el ends here
