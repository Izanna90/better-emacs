(global-set-key (kbd "TAB") 'indent-for-tab-command)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
(defun my-insert-tab ()
  (interactive)
  (insert-char ?\s tab-width))
(global-set-key (kbd "TAB") 'my-insert-tab)

(electric-pair-mode 1)
(setq electric-pair-pairs
      '(
        (?\" . ?\")
        (?\{ . ?\})
        (?\' . ?\')
        (?\( . ?\))
        (?\[ . ?\])))

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defun my/setup-treemacs ()
  (treemacs)
  (delete-other-windows)
  (treemacs-select-window))
(add-hook 'after-init-hook 'my/setup-treemacs)

(defun my/treemacs-set-root-to-project ()
  (interactive)
  (treemacs-display-current-project-exclusively))

(defun my/treemacs-add-project ()
  (interactive)
  (treemacs-add-project-to-workspace (read-directory-name "Select project root: ")))

(defun my/treemacs-remove-project ()
  (interactive)
    (treemacs-remove-project-from-workspace))
