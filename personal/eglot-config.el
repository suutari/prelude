(use-package eglot
  :config
  (add-to-list 'eglot-server-programs
               '(python-mode . ("pylsp")))

  ;; pylsp settings: enable plugins and configure them
  (setq-default eglot-workspace-configuration
                '(:pylsp (
                          :plugins (
                                    :ruff (
                                           :enabled t
                                           :formatEnabled t
                                           ))))))
