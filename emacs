
(package-initialize)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/"))

(setq inhibit-startup-screen t)
(setq-default tab-width 2)

(global-display-line-numbers-mode)
(global-centered-cursor-mode)

(menu-bar-mode 0)
(auto-save-mode 0)
(scroll-bar-mode 0)
(auto-save-mode 0)
(tool-bar-mode 0)
(blink-cursor-mode 0)

(ido-mode)

(set-frame-font "SourceCodePro-13")

(global-set-key (kbd "C-SPC") 'smex)

(global-set-key (kbd "C-v") #'set-mark-command)

(global-set-key (kbd "C-n") #'backward-char)
(global-set-key (kbd "C-e") #'next-line)
(global-set-key (kbd "TAB") #'previous-line)
(global-set-key (kbd "C-o") #'forward-char)

(global-set-key (kbd "C-p") #'forward-word)

(global-set-key (kbd "C-f") #'scroll-up)
(global-set-key (kbd "C-u") #'scroll-down)

(global-set-key (kbd "C-h") #'backward-delete-char-untabify)

(global-set-key (kbd "C-k") #'kill-whole-line)

(global-set-key (kbd "E") (kbd "("))
(global-set-key (kbd "I") (kbd ")"))
(global-set-key (kbd "N") (kbd "{"))
(global-set-key (kbd "O") (kbd "}"))

(custom-set-variables
 '(custom-enabled-themes '(wombat))
 '(package-selected-packages
   '(undo-tree
     valign zones easy-kill
     forth-mode paredit darkroom
     centered-cursor-mode kakoune smex)))

(setq backup-directory-alist '(("." . "~/.emacs_saves")))

(custom-set-faces)
