(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

; Show possible keyfunctions
(require 'guide-key)
(setq guide-key/guide-key-sequence '("C-x r" "C-x 4"))
(guide-key-mode 1)  ; Enable guide-key-mode

; Disable startup screen
(setq inhibit-startup-screen t)

;Evil Mode
(require 'evil)
(evil-mode 1)

; Color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'seoul256 t)
