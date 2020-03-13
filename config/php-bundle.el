
;;=================== Setup php-mode: https://github.com/emacs-php/php-mode
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

; Company language package for PHP
(use-package company-php
  :defer
  :after company)

(provide 'php-bundle)
