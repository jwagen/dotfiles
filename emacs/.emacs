; Disable startup screen
(setq inhibit-startup-screen t)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)


;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(use-package try
  :ensure t)

(use-package which-key
  :ensure t 
  :config
  (which-key-mode))



					; Show possible keyfunctions
;(use-package 'guide-key
;  :ensure t
;  :config
;  ;(setq guide-key/guide-key-sequence '("C-x r" "C-x 4"))
;  (guide-key-mode 1)  ; Enable guide-key-mode
;  )


					;Evil Mode
(use-package evil
  :ensure t
  :config
 (evil-mode 1))

;;;;;;;;;;;;;;;;;;
;Org configuration
;;;;;;;;;;;;;;;;;;

;Mouse for org mode
(require 'org-mouse)

; Custom bulletpoins for orgmode
(use-package org-bullets
  :ensure t)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

; Enable indenting in org mode
(setq org-indent-mode t)
(add-hook 'org-mode-hook #'(lambda ()
			     ;; make the lines in the buffer wrap around the edges of the screen.
			     ;; to press C-c q  or fill-paragraph ever again!
			     (visual-line-mode)
			     (org-indent-mode)
			     (turn-on-auto-fill) 
			     (set-fill-column 80)
			     ))


(setq org-agenda-files (list "~/Sync/orgzly/gcal.org"
			     "~/Sync/orgzly/prosjekt.org"))

;Load calender sync. Contians credentials, is therefore not put in git.
(load-file "~/.emacs.d/org-cal.el")



					; Color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'seoul256 t)
