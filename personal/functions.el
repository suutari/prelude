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

;; JavaScript / TypeScript indentation style switching
(require 'js2-mode)
(require 'typescript-mode)
(require 'web-mode)
(defun js-set-indent4 ()
  (interactive)
  (setq js-indent-level 4)
  (setq typescript-indent-level 4)
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-markup-indent-offset 4))
(defun js-set-indent2 ()
  (interactive)
  (setq js-indent-level 2)
  (setq typescript-indent-level 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-markup-indent-offset 2))
