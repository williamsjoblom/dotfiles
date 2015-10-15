(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("9960cc55931596d259ec3673ea7139c0090f21be4bd64728eefac0c949c843af" "97f9438943105a17eeca9f1a1c4c946765e364957749e83047d6ee337b5c0a73" default))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/.emacs.d/load")
(add-to-list 'custom-theme-load-path "~/.emacs.d/")

;; modes
(require 'go-mode-load)
(require 'dart-mode-load)


;; relative linenumbers
;;(require 'linum-relative)

;; font configuration
(set-face-attribute 'default nil :height 95)
(set-default-font "Source Code Pro Semibold:style=Semibold,Regular")

(tool-bar-mode -1) 
(menu-bar-mode -1) 
(scroll-bar-mode -1)

(global-linum-mode t)

(setq inhibit-splash-screen t)
(setq vc-follow-symlinks t)


;; key-bindings
(global-set-key (kbd "C-M-.") 'next-buffer)
(global-set-key (kbd "C-M-,") 'previous-buffer)

(global-set-key (kbd "C-.") 'other-window)
(global-set-key (kbd "C-,") 'prev-window)

(defun prev-window ()
  (interactive)
  (other-window -1))

(defun indent-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))


(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
(package-initialize))

(load-theme 'material t)

;; haskell indentation
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
