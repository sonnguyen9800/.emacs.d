(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))


(add-to-list 'auto-mode-alist '("\\.html?\\'" . company-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . company-mode))

(require 'lsp-mode)
(add-hook 'web-mode-hook #'lsp)

(provide 'html-css-bundle)
