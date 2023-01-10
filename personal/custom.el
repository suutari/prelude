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
 '(company-idle-delay 5)
 '(company-minimum-prefix-length 3)
 '(custom-enabled-themes (quote (smart-mode-line-respectful)))
 '(custom-safe-themes
   (quote
    ("923ee73494ea3611d2a1ff9f31bbf8d71b0b0cc2aeb4a6e0944ec6c83bc0ac23" "190a9882bef28d7e944aa610aa68fe1ee34ecea6127239178c7ac848754992df" "3b759e0534ff6561a5e3705e3670e698189429c25f340d9f74c1d1a038100545" "7e4581a53f8ed1da18a9fc3b4e2c535ed8d86593234079dfeb1f881c7dd2768a" "821b254405f67981865385ca165567011f2094c30786386e0ed1aa6318822288" "375bbf94d9efe7b36bafa7fbdadb5231003301d63deafdf4bc3d5a49679e9e1c" "d6922c974e8a78378eacb01414183ce32bc8dbf2de78aabcc6ad8172547cb074" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "71ecffba18621354a1be303687f33b84788e13f40141580fa81e7840752d31bf" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "c5a044ba03d43a725bd79700087dea813abcb6beb6be08c7eb3303ed90782482" "f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" "9dae95cdbed1505d45322ef8b5aa90ccb6cb59e0ff26fef0b8f411dfc416c552" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" "3a727bdc09a7a141e58925258b6e873c65ccf393b2240c51553098ca93957723" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" default)))
 '(dired-omit-files
   "^\\.?#\\|^\\.$\\|^\\.\\.$\\|^\\.git\\|^__pycache__\\|\\.pyc$")
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-pyvenv elpy-module-yasnippet elpy-module-sane-defaults)))
 '(elpy-rpc-backend "jedi")
 '(elpy-rpc-timeout 10)
 '(elpy-rpc-virtualenv-path (quote default))
 '(elpy-test-runner (quote elpy-test-pytest-runner))
 '(fill-column 72)
 '(helm-M-x-fuzzy-match t)
 '(helm-git-grep-at-point-deactivate-mark t)
 '(js-indent-level 4)
 '(js2-strict-trailing-comma-warning nil)
 '(org-columns-default-format "%50ITEM %TODO %2PRIORITY %10Effort %10CLOCKSUM %TAGS")
 '(package-pinned-packages (quote ((workgroups2 . "vendor-archive"))))
 '(package-selected-packages
   (quote
    (scss-mode flycheck-plantuml plantuml-mode graphql-mode csv-mode htmlize dockerfile-mode markdown-mode smex ido-completing-read+ flx-ido cython-mode wcheck-mode jinja2-mode multi-term helm-swoop smart-mode-line elpy workgroups2 yaml-mode web-mode tide json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters coffee-mode company helm-projectile helm counsel swiper exec-path-from-shell zop-to-char zenburn-theme which-key volatile-highlights super-save smartrep smartparens operate-on-number move-text magit projectile imenu-anywhere hl-todo guru-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major cyberpunk-theme crux browse-kill-ring beacon anzu ace-window)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(plantuml-default-exec-mode (quote jar))
 '(plantuml-jar-path "/usr/share/plantuml/plantuml.jar")
 '(plantuml-server-url "http://www.plantuml.com/plantuml")
 '(prelude-auto-save nil)
 '(prelude-clean-whitespace-on-save nil)
 '(projectile-git-submodule-command
   "git submodule --quiet foreach 'echo $toplevel/$sm_path' | tr '\\n' '\\0'")
 '(projectile-mode-line-prefix "Pt")
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
 '(sp-autodelete-wrap nil)
 '(sp-autoescape-string-quote nil)
 '(sp-autoinsert-pair nil)
 '(sp-autoskip-closing-pair nil)
 '(sp-escape-quotes-after-insert nil)
 '(tide-completion-detailed t)
 '(typescript-indent-level 4)
 '(web-mode-attr-indent-offset 4)
 '(web-mode-code-indent-offset 4)
 '(web-mode-css-indent-offset 4)
 '(web-mode-enable-css-colorization t)
 '(web-mode-markup-indent-offset 4)
 '(wg-session-file "~/.emacs.d/savefile/workgroups")
 '(whitespace-line-column 120)
 '(winner-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "#dcdccc"))))
 '(magit-diff-add ((((class color) (background dark)) (:foreground "green"))) t)
 '(magit-item-highlight ((t (:inherit secondary-selection :background "#011" :foreground "white"))) t))
