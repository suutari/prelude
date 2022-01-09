;;; gtd.el --- org-mode configuration for Getting Things Done

;;; Commentary:

;;; Code:

(require 'org)
(require 'org-agenda)
(require 'org-capture)

(setq org-agenda-files
      '("~/Documents/gtd/inbox.org"
        "~/Documents/gtd/projects.org"
        "~/Documents/gtd/tickler.org"))

(setq org-capture-templates
      '(("t" "Todo [inbox]" entry
         (file+headline "~/Documents/gtd/inbox.org" "Tasks")
         "* TODO %i%?")
        ("T" "Tickler" entry
         (file+headline "~/Documents/gtd/tickler.org" "Tickler")
         "* %i%? \n %U")))

(setq org-refile-targets
      '(("~/Documents/gtd/projects.org" :maxlevel . 3)
        ("~/Documents/gtd/someday.org" :level . 1)
        ("~/Documents/gtd/tickler.org" :maxlevel . 2)))

(setq org-todo-keywords
      '((sequence "TODO(t)" "STARTED(s)" "WAITING(w)"
                  "|" "DONE(d)" "CANCELLED(c)")))

(setq org-todo-keyword-faces
      '(
        ("TODO" . (:weight bold :box
                              (:line-width 1 :color nil :style none)
                              :foreground "#e42"))
        ("STARTED" . (:weight bold :box
                              (:line-width 1 :color nil :style none)
                              :foreground "#d90"))
        ("WAITING" . (:weight bold :box
                              (:line-width 1 :color nil :style none)
                              :foreground "#a3c"))
        ("CANCELED" . (:weight bold :box
                               (:line-width 1 :color nil :style none)
                               :foreground "#380"))
        ))

(setq org-agenda-custom-commands
      '(
        ("h" "Kotona" tags-todo "@koti"
         ((org-agenda-overriding-header "Kotona")
          (org-agenda-skip-function
           #'my-org-agenda-skip-all-siblings-but-first)))
        ("c" "Tietokoneella" tags-todo "@kone"
         ((org-agenda-overriding-header "Tietokoneella")
          (org-agenda-skip-function
           #'my-org-agenda-skip-all-siblings-but-first)))
        ("w" "Töissä tai työkoneella" tags-todo "@work"
         ((org-agenda-overriding-header "Töissä tai työkoneella")
          (org-agenda-skip-function
           #'my-org-agenda-skip-all-siblings-but-first)))
        ))

(defun my-org-agenda-skip-all-siblings-but-first ()
  "Skip all but the first non-done entry."
  (let (should-skip-entry)
    (unless (org-current-is-todo)
      (setq should-skip-entry t))
    (save-excursion
      (while (and (not should-skip-entry) (org-goto-sibling t))
        (when (org-current-is-todo)
          (setq should-skip-entry t))))
    (when should-skip-entry
      (or (outline-next-heading)
          (goto-char (point-max))))))

(defun org-current-is-todo ()
  (string= "TODO" (org-get-todo-state)))
