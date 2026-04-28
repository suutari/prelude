(use-package eglot
    :config
    (add-to-list 'eglot-server-programs
        `((python-mode python-ts-mode) .
             ,(eglot-alternatives
                  '(
                       ("pylsp")
                       ("basedpyright-langserver" "--stdio")
                       ("zuban" "server")
                       ))))
    (setq-default eglot-workspace-configuration
        '(
             :pylsp
             (
                 :plugins
                 (:ruff (:enabled t :formatEnabled t)))
             :basedpyright (:typeCheckingMode "recommended")
             :basedpyright.analysis
             (
                 :diagnosticSeverityOverrides
		 (
		     :reportUnusedCallResult "none")
                 :inlayHints
                 (
                     ;; :callArgumentNames :json-false
                     ;; :functionReturnTypes :json-false
                     ;; :variableTypes :json-false
                     ;; :genericTypes :json-false
                     ))
             ))
)

;; For removing the previous python-mode server programs
;; (setq eglot-server-programs
;;      (assoc-delete-all '(python-mode python-ts-mode) eglot-server-programs))
