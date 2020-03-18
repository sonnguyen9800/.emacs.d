(add-to-list 'load-path "~/.emacs.d/config/")
(add-to-list 'load-path "~/.emacs.d/appearance/")

;; Melpa - Package Manager
(require 'package)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)


(require 'general)
(require 'init-package.el)
(require 'package-manager)

(require 'theme)

(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dashboard-footer-messages (read-lines "~/.emacs.d/footnotes-dashboard.txt"))
 '(helm-ff-lynx-style-map t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (smart-mode-line smartparens smart-semicolon smart-tabs-mode php-auto-yasnippets indent-guide eglot dashboard page-break-lines lsp-ui flycheck lsp-mode ac-php company-php yaml-mode php-mode google-this zoom highlight-parentheses centaur-tabs web-beautify tern-auto-complete projectile solarized-theme emmet-mode beacon magit helm all-the-icons neotree yasnippet-snippets ## yasnippet)))
 '(zoom-mode t nil (zoom))
 '(zoom-size (quote (0.618 . 0.618))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

