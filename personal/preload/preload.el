;; Add Marmalade to end of ELPA package archives list
(require 'package)
(add-to-list
 'package-archives
 '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; Disable recentf-auto-cleanup before recentf is started
(require 'recentf)
(setq recentf-auto-cleanup 'never)

;; Disable flyspell
(setq prelude-flyspell nil)

;; Disable guru-mode
(setq prelude-guru nil)
