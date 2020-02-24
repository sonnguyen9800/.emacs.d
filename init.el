(add-to-list 'load-path "~/.emacs.d/config/")
(add-to-list 'load-path "~/.emacs.d/init-package.el")
;; Melpa - Package Manager
(require 'package)
(package-initialize)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)


(require 'general)
(require 'init-package.el "init-package.el")
(require 'package-manager)


