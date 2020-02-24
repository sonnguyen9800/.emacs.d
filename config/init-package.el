(package-refresh-contents)

;;Package to be installed:
(setq package-list '(yasnippet web-mode
			       ))
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(provide 'init-package.el)
