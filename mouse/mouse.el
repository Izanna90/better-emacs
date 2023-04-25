(xterm-mouse-mode 1)
(cua-mode t)
(setq cua-rectangle-mark-key (kbd "C-S-<SPC>"))
(defun my/toggle-xterm-mouse-mode ()
  "Toggle xterm-mouse-mode on and off."
  (interactive)
  (if xterm-mouse-mode
      (progn
        (xterm-mouse-mode -1)
        (message "xterm-mouse-mode disabled"))
    (progn
      (xterm-mouse-mode 1)
      (message "xterm-mouse-mode enabled"))))

;; Set a keybinding to toggle xterm-mouse-mode
(global-set-key (kbd "C-c m") 'my/toggle-xterm-mouse-mode)
