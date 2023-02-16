(setq-default indent-tabs-mode nil) ; use spaces instead of tabs

(global-linum-mode t) ; print line numbers

(menu-bar-mode -1) ; disable menu bar

(show-paren-mode 1) ; highlight matching parens

(setq tab-always-indent 'complete) ; make tab complete as well as indent

;; make backups and autosaves live in the backups folder
(setq backup-directory-alist `(("." . "~/.emacs_backups")))
(setq auto-save-file-name-transforms `((".*" "~/.emacs_saves" t)))

;; improve scrolling
(setf scroll-margin 5
      scroll-step 1
      scroll-conservatively 10000
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01)

;; 80 column ruler
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(monokai-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'monokai t)
