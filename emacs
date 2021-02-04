(setq-default indent-tabs-mode nil) ; use spaces instead of tabs

(global-linum-mode t) ; print line numbers

(menu-bar-mode -1) ; disable menu bar

(show-paren-mode 1) ; highlight matching parens

(setq tab-always-indent 'complete) ; make tab complete as well as indent

;; make all emacs backups live in the backups folder
(setq backup-directory-alist `(("." . "~/.emacs_backups")))

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
