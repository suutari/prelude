;; wcheck-mode

(prelude-require-packages '(wcheck-mode))
(setq wcheck-language-data
      '(
	("English"
	 (program . "/usr/bin/enchant")
	 (args "-l" "-d" "en")
	 (action-program . "/usr/bin/enchant")
	 (action-args "-a" "-d" "en")
	 (action-parser . enchant-suggestions-menu))
	("Finnish"
	 (program . "/usr/bin/enchant")
	 (args  "-l" "-d" "fi")
	 (syntax . my-finnish-syntax-table)
	 (action-program . "/usr/bin/enchant")
	 (action-args "-a" "-d" "fi")
	 (action-parser . enchant-suggestions-menu))
	))
(defvar my-finnish-syntax-table
  (copy-syntax-table text-mode-syntax-table))
(modify-syntax-entry ?- "w" my-finnish-syntax-table)
(defun enchant-suggestions-menu (marked-text)
  (cons (cons "[Add to dictionary]" 'enchant-add-to-dictionary)
	(wcheck-parser-ispell-suggestions)))
(defvar enchant-dictionaries-dir "~/.config/enchant")
(defun enchant-add-to-dictionary (marked-text)
  (let* ((word (aref marked-text 0))
	 (language (aref marked-text 4))
	 (file (let ((code (nth 1 (member "-d" (wcheck-query-language-data
						language 'action-args)))))
		 (when (stringp code)
		   (concat (file-name-as-directory enchant-dictionaries-dir)
			   code ".dic")))))
    (when (and file (file-writable-p file))
      (with-temp-buffer
	(insert word) (newline)
	(append-to-file (point-min) (point-max) file)
	(message "Added word \"%s\" to the %s dictionary"
		 word language)))))
