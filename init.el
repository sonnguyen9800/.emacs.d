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
 '(helm-ff-lynx-style-map t t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (web-beautify tern-auto-complete projectile solarized-theme emmet-mode beacon magit helm all-the-icons neotree yasnippet-snippets ## yasnippet))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

