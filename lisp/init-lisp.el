;; init-lisp.el --- Initialize Lisp configurations.	-*- lexical-binding: t -*-

;; Lisp
(use-package slime
  :config (setq inferior-lisp-program "sbcl"))

;; Scheme
(use-package geiser-guile)

(use-package geiser
  :config
  (setq geiser-active-implementations '(guile)))

;; Paredit
(use-package paredit
  :hook ((lisp-mode
          scheme-mode) . enable-paredit-mode))

(provide 'init-lisp)
