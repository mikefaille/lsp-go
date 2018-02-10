# lsp-go

[![MELPA](https://melpa.org/packages/lsp-go-badge.svg)](https://melpa.org/#/lsp-go)

Go support for `lsp-mode` using [Sourcegraph's Go Language Server](https://github.com/sourcegraph/go-langserver)

## Configuration

You will need to call `lsp-go-enable` when editing `.go` files. You can use the following in your Emacs init file:

```lisp
(add-hook 'go-mode-hook #'lsp-go-enable)
```
