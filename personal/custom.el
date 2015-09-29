;;; custom.el --- Emacs customized variables and faces

;;; Commentary:

;;; Code:

;; Emacs variables and faces  ==============================
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(adaptive-fill-regexp "[ 	]*\\([-–!|#%;:>*·•‣⁃◦]+[ 	]*\\)*")
 '(custom-safe-themes (quote ("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "c5a044ba03d43a725bd79700087dea813abcb6beb6be08c7eb3303ed90782482" "f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" "9dae95cdbed1505d45322ef8b5aa90ccb6cb59e0ff26fef0b8f411dfc416c552" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" "3a727bdc09a7a141e58925258b6e873c65ccf393b2240c51553098ca93957723" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" default)))
 '(dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$\\|^\\.git$")
 '(elpy-rpc-backend "jedi")
 '(elpy-rpc-timeout 5)
 '(fill-column 72)
 '(helm-M-x-fuzzy-match t)
 '(org-agenda-files (quote ("~/Documents/org")))
 '(org-default-notes-file "notes.org")
 '(org-directory "~/Documents/org")
 '(org-todo-keyword-faces (quote (("TODO" . "#f44") ("STARTED" . "#ee8"))))
 '(org-todo-keywords (quote ((sequence "TODO" "STARTED" "DONE"))))
 '(prelude-clean-whitespace-on-save nil)
 '(projectile-mode-line-lighter "Pt")
 '(projectile-project-root-files-bottom-up (quote (".projectile" ".hg" ".fslckout" ".bzr" "_darcs")))
 '(projectile-project-root-files-top-down-recurring (quote (".git" ".svn" "CVS")))
 '(projectile-remember-window-configs t)
 '(projectile-switch-project-action (quote projectile-dired))
 '(projectile-use-git-grep t)
 '(python-check-command "flake8")
 '(python-fill-docstring-style (quote django))
 '(server-mode t)
 '(server-temp-file-regexp "^/tmp/Re\\|/draft$\\|/COMMIT_EDITMSG$\\|/MERGE_MSG$\\|/git-rebase-todo$")
 '(sml/theme (quote respectful))
 '(sp-autodelete-closing-pair nil)
 '(sp-autodelete-opening-pair nil)
 '(sp-autodelete-pair nil)
 '(sp-autoescape-string-quote nil)
 '(sp-autoinsert-pair nil)
 '(wg-session-file "~/.emacs.d/savefile/workgroups")
 '(whitespace-line-column 120)
 '(winner-mode t nil (winner)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-diff-add ((((class color) (background dark)) (:foreground "green"))) t)
 '(magit-item-highlight ((t (:inherit secondary-selection :background "#011" :foreground "white"))) t))
