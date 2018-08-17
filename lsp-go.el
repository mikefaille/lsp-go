;;; lsp-go.el --- Go support for lsp-mode

;; Copyright (C) 2017 Vibhav Pant <vibhavp@gmail.com>

;; Author: Vibhav Pant <vibhavp@gmail.com>
;; Version: 1.0
;; Package-Requires: ((lsp-mode "3.0"))
;; Keywords: go, golang
;; URL: https://github.com/emacs-lsp/lsp-go

(require 'lsp-mode)

(defgroup lsp-go nil
  "lsp-go settings"
  :group 'tools)

(defcustom lsp-go-executable-path (executable-find "go-langserver")
  "Path to the go-langserver executable."
  :type 'string
  :group 'lsp-go)

(defcustom lsp-go-language-server-flags '("-gocodecompletion")
  "Extra arguments for the go-langserver"
  :type '(repeat string)
  :group 'lsp-go)

(lsp-define-stdio-client lsp-go "go" #'(lambda () default-directory)
                         `(,lsp-go-executable-path
                           "-mode=stdio"
                           ,@lsp-go-language-server-flags)
                         :ignore-regexps
                         '("^langserver-go: reading on stdin, writing on stdout$"))

(provide 'lsp-go)
;;; lsp-go.el ends here
