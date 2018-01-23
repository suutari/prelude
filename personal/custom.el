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
 '(custom-safe-themes
   (quote
    ("d6922c974e8a78378eacb01414183ce32bc8dbf2de78aabcc6ad8172547cb074" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "71ecffba18621354a1be303687f33b84788e13f40141580fa81e7840752d31bf" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "c5a044ba03d43a725bd79700087dea813abcb6beb6be08c7eb3303ed90782482" "f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" "9dae95cdbed1505d45322ef8b5aa90ccb6cb59e0ff26fef0b8f411dfc416c552" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" "3a727bdc09a7a141e58925258b6e873c65ccf393b2240c51553098ca93957723" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" default)))
 '(dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$\\|^\\.git$")
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-pyvenv elpy-module-yasnippet elpy-module-sane-defaults)))
 '(elpy-rpc-backend "jedi")
 '(elpy-rpc-timeout 5)
 '(elpy-test-runner (quote elpy-test-pytest-runner))
 '(fill-column 72)
 '(flycheck-javascript-flow-executable "/home/tuomas/.nvm/versions/node/v8.9.0/bin/flow")
 '(helm-M-x-fuzzy-match t)
 '(helm-git-grep-at-point-deactivate-mark t)
 '(js-indent-level 2)
 '(js2-strict-trailing-comma-warning nil)
 '(org-agenda-files (quote ("~/Documents/org")))
 '(org-default-notes-file "notes.org")
 '(org-directory "~/Documents/org")
 '(org-todo-keyword-faces (quote (("TODO" . "#f44") ("STARTED" . "#ee8"))))
 '(org-todo-keywords (quote ((sequence "TODO" "STARTED" "DONE"))))
 '(package-selected-packages
   (quote
    (flow-minor-mode company-flow flycheck-flow flycheck-mypy cython-mode tide typescript-mode csv-mode scss-mode indium po-mode less-css-mode yaml-mode zop-to-char zenburn-theme workgroups2 which-key web-mode wcheck-mode volatile-highlights undo-tree smex smartrep smartparens smart-mode-line rainbow-mode rainbow-delimiters ov operate-on-number multi-term move-text markdown-mode magit json-mode js2-mode jinja2-mode jabber imenu-anywhere ido-completing-read+ helm-swoop helm-projectile helm-git-grep guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck flx-ido expand-region elpy elisp-slime-nav editorconfig easy-kill discover-my-major diminish diff-hl cyberpunk-theme crux coffee-mode browse-kill-ring beacon anzu ace-window)))
 '(prelude-auto-save nil)
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
 '(server-temp-file-regexp
   "^/tmp/Re\\|/draft$\\|/COMMIT_EDITMSG$\\|/MERGE_MSG$\\|/git-rebase-todo$")
 '(sml/theme (quote respectful))
 '(sp-autodelete-closing-pair nil)
 '(sp-autodelete-opening-pair nil)
 '(sp-autodelete-pair nil)
 '(sp-autoescape-string-quote nil)
 '(sp-autoinsert-pair nil)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(wg-session-file "~/.emacs.d/savefile/workgroups")
 '(whitespace-line-column 120)
 '(winner-mode t nil (winner)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "#dcdccc"))))
 '(magit-diff-add ((((class color) (background dark)) (:foreground "green"))) t)
 '(magit-item-highlight ((t (:inherit secondary-selection :background "#011" :foreground "white"))) t))
