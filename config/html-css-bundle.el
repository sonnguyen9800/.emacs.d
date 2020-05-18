(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . company-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . company-mode))

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))

(provide 'html-css-bundle)
