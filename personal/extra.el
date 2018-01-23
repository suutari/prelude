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
(elpy-use-ipython)

;; smart-mode-line
(prelude-require-packages '(smart-mode-line))
(sml/setup)

;; helm-git-grep
(prelude-require-packages '(helm-git-grep))

;; helm-swoop
(prelude-require-packages '(helm-swoop))

;; multi-term
(prelude-require-packages '(multi-term))

;; jinja2-mode
(prelude-require-packages '(jinja2-mode))

;; jabber
(prelude-require-packages '(jabber))

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

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))
;; enable typescript-tslint checker
(flycheck-add-mode 'typescript-tslint 'web-mode)

(add-to-list 'compilation-error-regexp-alist
             '("^\\[\\([0-9]+\\), \\([0-9]+\\)\\]: [^\n]*" nil 1 2))
(add-to-list 'compilation-error-regexp-alist
             '("^\\([^\n[]+\\)\n\\[\\([0-9]+\\), \\([0-9]+\\)\\]:" 1 2 3))

(add-to-list 'compilation-error-regexp-alist
             '("^(\\([0-9]+\\),\\([0-9]+\\)): [^\n]*" nil 1 2))
(add-to-list 'compilation-error-regexp-alist
             '("^\\([^\n(]+\\)\n(\\([0-9]+\\),\\([0-9]+\\)):" 1 2 3))
