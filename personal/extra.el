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
