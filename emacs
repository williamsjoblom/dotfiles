(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

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


;; theme configuration
(load-theme 'solarized t)



;; font configuration
(set-face-attribute 'default nil :height 90)
;;(set-default-font "-misc-fantasque sans mono-medium-r-normal--0-0-0-0-m-0-iso8859-10")


;; remove toolbar & menu
(tool-bar-mode -1)
(menu-bar-mode -1)

;; line numbers
(global-linum-mode t)

;; inhibit splash-screen
(setq inhibit-splash-screen t)

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