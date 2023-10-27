(package-initialize)
(add-to-list 'package-archives
	'("melpa" . "https://melpa.org/packages/"))

(setq inhibit-startup-screen t)
(setq-default indent-tabs-mode 'only)
(setq-default tab-width 3)
(defvaralias 'c-basic-offset 'tab-width)
(setq backup-by-copying t)
(setq sentence-end-double-space nil)

(make-directory "~/.emacs_backups/" t)
(make-directory "~/.emacs_autosave" t)
(setq auto-save-file-name-transform
	'((".*" "~/.emacs_autosave/" t)))
(setq backup-directory-alist
	'((".*" . "~/.emacs_backups")))
(setq make-backup-files nil)

(global-display-line-numbers-mode)
(global-centered-cursor-mode)

(menu-bar-mode 0)
(auto-save-mode 0)
(scroll-bar-mode 0)
(auto-save-mode 0)
(tool-bar-mode 0)
(blink-cursor-mode 0)

(ido-mode)
(yuffy)

(set-frame-font "SourceCodePro-16")

;(global-set-key (kbd "C-SPC") 'smex)
(global-set-key (kbd "C-SPC") 'yuffy)
(global-set-key (kbd "C-n") #'backward-char)
(global-set-key (kbd "C-e") #'next-line)
;(global-set-key (kbd "TAB") #'previous-line)
(global-set-key [(control i)] 'previous-line)
(global-set-key (kbd "C-o") #'forward-char)

(global-set-key (kbd "C-f") #'scroll-up)
(global-set-key (kbd "C-u") #'scroll-down)

(global-set-key (kbd "C-h")
	#'backward-delete-char-untabify)

(setq kill-whole-line t)
(global-set-key (kbd "C-k") #'kill-whole-line)

(global-set-key (kbd "E") (kbd "("))
(global-set-key (kbd "I") (kbd ")"))
(global-set-key (kbd "N") (kbd "{"))
(global-set-key (kbd "O") (kbd "}"))
(global-set-key (kbd "U") (kbd "["))
(global-set-key (kbd "Y") (kbd "]"))

(global-set-key [(control h)] 'delete-backward-char)
(keyboard-translate ?\C-h ?\C-?)

(setq require-final-newline t)
(setq frame-inhibit-implied-resize t)
(setq pixel-scroll-precision-mode t)
(setq show-trailing-whitespace t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(modus-vivendi))
 '(package-selected-packages
	'(boon melancholy-theme evil ryo-modal undo-tree valign zones easy-kill forth-mode paredit darkroom centered-cursor-mode kakoune smex)))

(custom-set-faces)

(define-minor-mode yuffy
  "yuffy it up"
  nil
  " yfy"
  '(((kbd "n") . backward-char)
	 ((kbd "o") . forward-char)
	 ((kbd "i") . previous-line)
	 ((kbd "e") . next-line)
	 ((kbd "w") . forward-word)
	 ((kbd "D") . kill-whole-line)
	 ((kbd "d") . kill-region)
	 ((kbd "x") . delete-char)
	 ((kbd "p") . yank)
	 ((kbd "0") . beginning-of-line)
	 ((kbd "s") . search-forward)
	 ((kbd "r") . search-backward)
	 ((kbd "v") . set-mark-command)
	 ((kbd "u") . undo-only)
	 ((kbd "y") . undo-redo)
	 ((kbd " ") . smex)
	 ((kbd "a") . yuffy))
  :group 'yuffy-group)
