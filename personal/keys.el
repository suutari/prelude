;; Global keys =============================================

;; Function keys
(global-set-key (kbd "<f6>") 'next-error) ; remember also: M-g M-n
(global-set-key (kbd "S-<f6>") 'previous-error)  ; remember also: M-g M-p
(global-set-key (kbd "<f7>") 'recompile)
(global-set-key (kbd "C-x <f7>") 'compile)
(global-set-key (kbd "<f8>") 'multi-term)
(global-set-key (kbd "<f9>") 'speedbar)
(global-set-key (kbd "§") 'god-mode-all)
(global-set-key (kbd "C-§") 'god-mode-all)

;; Revert to default C-a behavior
(global-set-key
 [remap move-beginning-of-line] 'move-beginning-of-line)

;; Binds for my custom functions
(global-set-key (kbd "C-c C-a") 'dirty-ai-python-mode)
(global-set-key (kbd "C-c C-b") 'toggle-dirty-mode)
(global-set-key (kbd "M-n") 'elpy-nav-forward-definition)
(global-set-key (kbd "M-p") 'elpy-nav-backward-definition)


;; pyvenv
(global-set-key (kbd "C-c w") 'pyvenv-workon)

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

;; helm-swoop
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)
