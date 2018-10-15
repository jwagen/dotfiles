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

;Mouse for org mode
(require 'org-mouse)

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
					; Enable wrapping at column 80 when in org mod
					;(add-hook 'text-mode-hook '(lambda() (turn-on-auto-fill) (set-fill-column 80)))

					;Calendar sync
					;(use-package org-gcal
					;             :ensure t
					;             :config
					;             (setq org-gcal-client-id "940707923736-55qdish8290369dg0nfo1i0pmkkt2meu.apps.googleusercontent.com"
					;                   org-gcal-client-secret "u41qKOj1cSJWHsCHlxKbG9e0"
					;                   org-gcal-file-alist '(("cp6cokm6ih7senu495gn7uq8c4@group.calendar.google.com" .  "~/Sync/orgzly/gcal.org"))))


(use-package oauth2
  :ensure t)
(load-file "~/.emacs.d/org-cal.el")
;(use-package org-caldav
;  :ensure t
;  :config
;  (setq org-caldav-oauth2-client-id "940707923736-55qdish8290369dg0nfo1i0pmkkt2meu.apps.googleusercontent.com"
;	org-caldav-oauth2-client-secret "u41qKOj1cSJWHsCHlxKbG9e0"
;	org-caldav-url 'google
;	org-caldav-calendar-id "cp6cokm6ih7senu495gn7uq8c4@group.calendar.google.com"
;	org-caldav-inbox "~/Sync/orgzly/gcal.org"
;	org-caldav-files (list "~/Sync/orgzly/prosjekt.org")
;	org-icalendar-timezone "Europe/Berlin"
;	org-icalendar-use-scheduled '(event-if-todo
;				      event-if-not-todo) ))
;
(setq org-agenda-files (list "~/Sync/orgzly/gcal.org"
			     "~/Sync/orgzly/prosjekt.org"))


					; Custom bulletpoins for orgmode
(use-package org-bullets
  :ensure t)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

					; Color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'seoul256 t)
