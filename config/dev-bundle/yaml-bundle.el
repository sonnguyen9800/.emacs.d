;;================== Setup yaml-mode: https://github.com/yoshiki/yaml-mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(provide 'yaml-bundle)
