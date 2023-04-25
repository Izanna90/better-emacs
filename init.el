(add-hook 'emacs-startup-hook 'command-line-visit-file)
(require 'package)
(add-to-list 'load-path "~/org-mode/lisp")
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(setq create-lockfiles nil)
(setq make-backup-files nil)
(add-to-list 'load-path "~/.emacs.d/interface")
(load "interface.el")
(add-to-list 'load-path "~/.emacs.d/mouse")
(load "mouse.el")
(add-to-list 'load-path "~/.emacs.d/programming")
(load "programming.el")
(add-to-list 'load-path "~/.emacs.d/keyboard")
(load "keyboard.el")
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'c-mode-common-hook
          (lambda ()
            (setq-local company-backends (cons 'company-c-headers company-backends))))
(setq company-c-headers-path-system '("/usr/include" "/usr/local/include"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(projectile company-c-headers company treemacs)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
