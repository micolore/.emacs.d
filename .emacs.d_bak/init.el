(setq centaur-full-name "kubrick")
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(tool-bar-mode 0)
(setq display-time-format "%H:%M %Y-%m-%d")
(setq display-time-default-load-average nil)
(display-time-mode)
(menu-bar-mode -1)
(setq mouse-yank-at-point nil)
(setq-default cursor-type 'bar)
(scroll-bar-mode -1)
(global-linum-mode 1)
(setq inhibit-splash-screen 1)
(set-face-attribute 'default nil :height 160)
(setq kill-buffer-query-functions
  (remq 'process-kill-buffer-query-function
    kill-buffer-query-functions))
(setq gc-cons-threshold (* 32 1024 1024))

;; common
(setq-default kill-whole-line t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq make-backup-files nil auto-save-default nil)
(setq create-lockfiles nil)
(setq suggest-key-bindings 1)

;; package 
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa-stable" . "http://elpa.emacs-china.org/melpa-stable/")
                          ("melpa-stable2" . "https://stable.melpa.org/packages/")
                          ("melpa" . "http://elpa.emacs-china.org/melpa/")
                         ("marmalada" . "http://elpa.emacs-china.org/marmalade/")))


(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" "711efe8b1233f2cf52f338fd7f15ce11c836d0b6240a18fffffc2cbd5bfe61b0" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "f7216d3573e1bd2a2b47a2331f368b45e7b5182ddbe396d02b964b1ea5c5dc27" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "f2927d7d87e8207fa9a0a003c0f222d45c948845de162c885bf6ad2a255babfd" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "f2c35f8562f6a1e5b3f4c543d5ff8f24100fae1da29aeb1864bbc17758f52b70" default)))
 '(package-selected-packages
   (quote
    (go-tag go-gen-test go-impl afternoon-theme rainbow-delimiters zenburn-theme inkpot-theme auto-complete guru-mode yasnippet-snippets go-rename go-guru go-eldoc company-go go-mode doom-themes company flycheck-golangci-lint go-fill-struct lsp-ivy org-bullets lsp-mode smex org-journal deft ivy-dired-history rg yasnippet counsel swiper ivy projectile dashboard ace-window ripgrep use-package magit))))

;; theme by package 
;;(load-theme 'afternoon)
(load-theme 'doom-one-light)

;; rainbow delimiters
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(require 'cl-lib)
(require 'color)
(defun rainbow-delimiters-using-stronger-colors ()
  (interactive)
  (cl-loop
   for index from 1 to rainbow-delimiters-max-face-count
   do
   (let ((face (intern (format "rainbow-delimiters-depth-%d-face" index))))
    (cl-callf color-saturate-name (face-foreground face) 30))))
(add-hook 'emacs-startup-hook 'rainbow-delimiters-using-stronger-colors)

;;;ivy
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key (kbd "<f2>") nil)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-c rg") 'counsel-rg)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

(ivy-rich-mode 1)
(setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line)
(setq ivy-rich-path-style 'abbrev)
'(ivy-switch-buffer
  (:columns
   ((ivy-switch-buffer-transformer (:width 30)) 
    (ivy-rich-switch-buffer-size (:width 7))  
    (ivy-rich-switch-buffer-indicators (:width 4 :face error :align right)) 
    (ivy-rich-switch-buffer-major-mode (:width 12 :face warning))           
    (ivy-rich-switch-buffer-project (:width 15 :face success))              
    (ivy-rich-switch-buffer-path (:width (lambda (x) (ivy-rich-switch-buffer-shorten-path x (ivy-rich-minibuffer-width 0.3))))))
   :predicate
   (lambda (cand) (get-buffer cand)))
  counsel-find-file
  (:columns
   ((ivy-read-file-transformer)
    (ivy-rich-counsel-find-file-truename (:face font-lock-doc-face))))
  counsel-M-x
  (:columns
   ((counsel-M-x-transformer (:width 40))
    (ivy-rich-counsel-function-docstring (:face font-lock-doc-face)))) 
  counsel-describe-function
  (:columns
   ((counsel-describe-function-transformer (:width 40))
    (ivy-rich-counsel-function-docstring (:face font-lock-doc-face)))) 
  counsel-describe-variable
  (:columns
   ((counsel-describe-variable-transformer (:width 40))
    (ivy-rich-counsel-variable-docstring (:face font-lock-doc-face)))) 
  counsel-recentf
  (:columns
   ((ivy-rich-candidate (:width 0.8))
    (ivy-rich-file-last-modified-time (:face font-lock-comment-face))))
  package-install
  (:columns
   ((ivy-rich-candidate (:width 30))
    (ivy-rich-package-version (:width 16 :face font-lock-comment-face))
    (ivy-rich-package-archive-summary (:width 7 :face font-lock-builtin-face))
    (ivy-rich-package-install-summary (:face font-lock-doc-face)))))  
(defun ivy-rich-switch-buffer-icon (candidate)
  (with-current-buffer
      (get-buffer candidate)
    (let ((icon (all-the-icons-icon-for-mode major-mode)))
      (if (symbolp icon)
          (all-the-icons-icon-for-mode 'fundamental-mode)
        icon))))
(all-the-icons-ivy-setup)


;; ace edit window
(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0)))))
))
(global-set-key (kbd "M-g r") 'avy-goto-char-2)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
(global-set-key (kbd "M-g f") 'avy-goto-line)
(global-set-key (kbd "M-g e") 'avy-goto-word-0)
(global-set-key (kbd "M-o") 'ace-window)


(use-package all-the-icons
  :ensure t
  :load-path "/Users/kubrick/.emacs.d-kubrick/all-the-icons.el/"
  )

;;; icon 
(setq all-the-icons-ibuffer-icon-size 1.0)
(setq all-the-icons-ibuffer-icon-v-adjust 0.0)
(setq all-the-icons-ibuffer-human-readable-size t)
(setq inhibit-compacting-font-caches t)

;;; mode line
(require 'doom-modeline)
(doom-modeline-mode 1)
(setq doom-modeline-height 25)
(setq doom-modeline-bar-width 3)
(setq doom-modeline-window-width-limit fill-column)
(setq doom-modeline-buffer-file-name-style 'auto)
(setq doom-modeline-enable-word-count nil)
(setq doom-modeline-number-limit 99)



;; magit
(global-set-key (kbd "C-x g") 'magit-status)

;; org
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; dashboard 
(require 'dashboard)
(dashboard-setup-startup-hook)
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
(setq dashboard-items '((recents  . 10)
                     (bookmarks . 5)
                     (projects . 5)
                     (agenda . 5)))
(setq dashboard-center-content t)
(setq dashboard-set-navigator t)

(require 'page-break-lines)
(set-fontset-font "fontset-default"
                  (cons page-break-lines-char page-break-lines-char)
                  (face-attribute 'default :family))

;; company
(use-package company
  :ensure t
  :config
  (global-company-mode t)
  (setq company-idle-delay 0)
  (setq company-show-numbers t)
  (setq company-minimum-prefix-length 2)
  (setq company-backends
        '((company-files
           company-yasnippet
           company-keywords
           company-capf
           )
          (company-abbrev company-dabbrev))))
 
(add-hook 'emacs-lisp-mode-hook (lambda ()
                                  (add-to-list  (make-local-variable 'company-backends)
                                                '(company-elisp))))

;
;; change C-n C-p
;;
(with-eval-after-load 'company
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil))

;;
;; change company complete common
;;
(advice-add 'company-complete-common :before (lambda () (setq my-company-point (point))))
(advice-add 'company-complete-common :after (lambda () (when (equal my-company-point (point))
                                                         (yas-expand))))

;; yasnippet
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode)
  (use-package yasnippet-snippets :ensure t)
  )

;;(use-package flycheck
;;  :ensure t
;;  :init
;;  (global-flycheck-mode t)
;;  )


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))


(load "~/.emacs.d/custom/lsp.el")
(load "~/.emacs.d/custom/lsp-go.el")
;; by gocode
;;(load "~/.emacs.d/custom/go.el") 


