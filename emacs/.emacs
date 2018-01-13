(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

; Disable startup screen
(setq inhibit-startup-screen t)

;Evil Mode
(require 'evil)
(evil-mode 1)

; Color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'seoul256 t)
