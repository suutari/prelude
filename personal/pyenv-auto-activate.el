(require 'pyvenv)

(defun my/find-upward (start-dir name)
  "Search upward from START-DIR for a file or directory named NAME.
Return the full path to the found item or nil if not found."
  (let ((dir (file-name-as-directory (expand-file-name start-dir)))
        (found nil))
    (while (and dir (not found))
      (let ((candidate (expand-file-name name dir)))
        (if (file-exists-p candidate)
            (setq found candidate)
          (let ((parent (file-name-directory (directory-file-name dir))))
            (if (or (null parent) (string= parent dir))
                (setq dir nil)               ; reached root
              (setq dir parent))))))
    found))

(defun my/pyvenv-find-and-activate ()
  "Find a `.venv` directory up the tree and activate its Python env.
Called in python-mode-hook when a buffer has an associated file."
  (when buffer-file-name
    (let* ((start (file-name-directory buffer-file-name))
           (venv-dir (my/find-upward start ".venv")))
      (when venv-dir
        ;; Prefer pyvenv-activate if a python executable exists inside .venv
        (let ((possible-bin
               ;; typical layouts: .venv/bin/python (Unix) or .venv/Scripts/python.exe (Windows)
               (or (when (file-exists-p (expand-file-name "bin/python" venv-dir))
                     (expand-file-name "bin" venv-dir))
                   (when (file-exists-p (expand-file-name "Scripts/python.exe" venv-dir))
                     (expand-file-name "Scripts" venv-dir)))))
          (when possible-bin
            ;; Activate by pointing pyvenv to the venv root (pyvenv expects the root)
            (pyvenv-activate venv-dir)))))))

;; Hook it for python-mode and python-ts-mode (treesitter)
(add-hook 'python-mode-hook #'my/pyvenv-find-and-activate)
(when (boundp 'python-ts-mode-hook)
  (add-hook 'python-ts-mode-hook #'my/pyvenv-find-and-activate))
