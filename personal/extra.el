;;; extra.el --- Extra Emacs configuration stuff

;;; Commentary:

;;; Code:

(require 'prelude-packages)

;; Packages and package configuration ======================

;; Theme
(prelude-require-packages '(cyberpunk-theme))
(load-theme 'cyberpunk t)

;; elpy
(prelude-require-packages '(elpy))
(require 'elpy)
(elpy-enable)
(elpy-use-ipython)

;; perspective
(prelude-require-packages '(persp-mode))
(eval-after-load "persp-mode-autoloads"
  '(progn
     (setq wg-morph-on nil) ; switch off window restore animation
     (add-hook 'after-init-hook #'(lambda () (persp-mode t)))))
(require 'persp-mode-projectile)

;; smart-mode-line
(prelude-require-packages '(smart-mode-line))
(sml/setup)

;; helm-git-grep
(prelude-require-packages '(helm-git-grep))

;; multi-term
(prelude-require-packages '(multi-term))

;; jinja2-mode
(prelude-require-packages '(jinja2-mode))

;; jabber
(prelude-require-packages '(jabber))

;; Tramp - Make sudo to root use ssh as proxy to allow editing files
;; on remote as root with sudo
(set-default
 'tramp-default-proxies-alist
 (quote ((".*" "\\`root\\'" "/ssh:%h:"))))


;; Custom functions ========================================

;; python modes
(defun ai-python-mode ()
  (interactive)
  (setq indent-tabs-mode t)
  (setq python-indent 4)
  (setq python-continuation-offset 4)
  (setq tab-width 4))
(defun normal-python-mode ()
  (interactive)
  (setq indent-tabs-mode nil)
  (setq python-indent 4)
  (setq python-continuation-offset 4)
  (setq tab-width 8))
(defun dirty-ai-python-mode ()
  (interactive)
  (ai-python-mode)
  (flycheck-mode 0)
  (flymake-mode 0))
(defun non-dirty-mode ()
  (interactive)
  (flycheck-mode t)
  (flymake-mode t))
(defun toggle-dirty-mode ()
  (interactive)
  (flycheck-mode 'toggle)
  (flymake-mode 'toggle))

;; Navigating in Python files
(defun elpy-nav-forward-definition ()
  "Move forward to the next definition (class or function)."
  (interactive)
  (if (save-excursion
        (forward-char 1)
        (re-search-forward "^[ \t]*\\(def\\|class\\) " nil t))
      (goto-char (match-beginning 1))
    (goto-char (point-max))))

(defun elpy-nav-backward-definition ()
  "Move backward to the previous definition (class or function)."
  (interactive)
  (if (save-excursion
        (forward-char -1)
        (re-search-backward "^[ \t]*\\(def\\|class\\) " nil t))
      (goto-char (match-beginning 1))
    (goto-char (point-min))))


;; Global keys =============================================

;; Function keys
(global-set-key (kbd "<f6>") 'next-error) ; remember also: M-g M-n
(global-set-key (kbd "S-<f6>") 'previous-error)  ; remember also: M-g M-p
(global-set-key (kbd "<f7>") 'recompile)
(global-set-key (kbd "C-x <f7>") 'compile)
(global-set-key (kbd "<f8>") 'multi-term)
(global-set-key (kbd "<f9>") 'speedbar)
(global-set-key (kbd "§") 'god-mode-all)

;; Revert to default C-a behavior
(global-set-key
 [remap move-beginning-of-line] 'move-beginning-of-line)

;; Binds for my custom functions
(global-set-key (kbd "C-c C-a") 'dirty-ai-python-mode)
(global-set-key (kbd "C-c C-b") 'toggle-dirty-mode)
(global-set-key (kbd "M-n") 'elpy-nav-forward-definition)
(global-set-key (kbd "M-p") 'elpy-nav-backward-definition)


;; ace-jump-mode
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;; helm
;;(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-c C-<SPC>") 'helm-all-mark-rings)
;;(global-set-key (kbd "M-x") 'helm-M-x)

;; helm-git-grep
(global-set-key (kbd "C-c C-g") 'helm-git-grep-at-point)
;; helm-git-grep - Invoke `helm-git-grep' from isearch.
(define-key isearch-mode-map (kbd "C-c g") 'helm-git-grep-from-isearch)
;; helm-git-grep - Invoke `helm-git-grep' from other helm.
(eval-after-load 'helm
  '(define-key helm-map (kbd "C-c g") 'helm-git-grep-from-helm))


;; Fonts and stuff =========================================

(set-face-attribute 'default nil :height 90)
