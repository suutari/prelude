;;; extra.el --- Extra Emacs configuration stuff

;;; Commentary:

;;; Code:

(require 'prelude-packages)

;; Packages and package configuration ======================

;; Theme
(prelude-require-packages '(cyberpunk-theme))
(load-theme 'cyberpunk t)
(set-face-background 'cursor "#dcdccc")

;; workgroups2
(prelude-require-packages '(workgroups2))
(workgroups-mode 1)

;; elpy
(prelude-require-packages '(elpy))
(require 'elpy)
(elpy-enable)

;; smart-mode-line
(prelude-require-packages '(smart-mode-line))
(sml/setup)

;; helm-git-grep (from vendor directory)
(require 'helm-git-grep)
(defun helm-git-grep-set-pathspec ()
  "Interactively update the pathspec for `helm-git-grep'"
  (interactive)
  (let ((helm-suspend-update-flag t)
        (enable-recursive-minibuffers t)
        pathspecs)
    (minibuffer-depth-indicate-mode 1)
    (setq pathspecs (-filter (lambda (x) (not (string-empty-p x)))
                             (split-string
                              (read-string "git-grep pathspecs: ") " ")))
    (helm-log "Using pathspecs: %s" pathspecs)
    (setq helm-git-grep-pathspecs pathspecs))
  (helm-git-grep-rerun-with-input))

(put 'helm-git-grep-set-pathspec 'helm-only t)
(define-key helm-git-grep-map (kbd "C-c z") 'helm-git-grep-set-pathspec)

;; Reset the git-grep pathspec before every invocation
;; of `helm-git-grep'
(defun helm-git-grep@clear-pathspecs (&rest _args)
  (setq helm-git-grep-pathspecs nil))

(advice-add 'helm-git-grep :before 'helm-git-grep@clear-pathspecs)

;; helm-swoop
(prelude-require-packages '(helm-swoop))

;; multi-term
(prelude-require-packages '(multi-term))

;; jinja2-mode
(prelude-require-packages '(jinja2-mode))

;; ox-reveal (from vendor directory)
(require 'ox-reveal)

;; Tramp - Make sudo to root use ssh as proxy to allow editing files
;; on remote as root with sudo
(set-default
 'tramp-default-proxies-alist
 (quote ((".*" "\\`root\\'" "/ssh:%h:"))))

;; Spelling

(setq ispell-local-dictionary-alist
      (append ispell-local-dictionary-alist
              '(("suomi"
                 "[%.0-9A-Za-z\247\300-\326\330-\366\370-\377-]"
                 "[^.%0-9A-Za-z\247\300-\326\330-\366\370-\377-]"
                 "[':]" nil nil nil utf-8))))


;; Fonts and stuff =========================================

(set-face-attribute 'default nil :height 90)


;; Tide (TypeScript IDE) ===================================
(prelude-require-packages '(tide typescript-mode web-mode))
(require 'tide)
(require 'typescript-mode)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; setup Tide for TS files
(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
;(add-hook 'before-save-hook 'tide-format-before-save)

;; setup Tide for TSX files
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))
;; enable typescript-tslint checker
(flycheck-add-mode 'typescript-tslint 'web-mode)

;; Error message formats

(add-to-list 'compilation-error-regexp-alist
             '("^\\[\\([0-9]+\\), \\([0-9]+\\)\\]: [^\n]*" nil 1 2))
(add-to-list 'compilation-error-regexp-alist
             '("^\\([^\n[]+\\)\n\\[\\([0-9]+\\), \\([0-9]+\\)\\]:" 1 2 3))

(add-to-list 'compilation-error-regexp-alist
             '("^(\\([0-9]+\\),\\([0-9]+\\)): [^\n]*" nil 1 2))
(add-to-list 'compilation-error-regexp-alist
             '("^\\([^\n(]+\\)\n(\\([0-9]+\\),\\([0-9]+\\)):" 1 2 3))
