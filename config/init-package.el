;;Package to be installed:
(setq package-list '(magit yasnippet web-mode company-tern js2-mode js2-refactor xref-js2
			   helm neotree magit beacon solarized-theme centaur-tabs projectile
			   google-this
			   emmet-mode web-beautify auto-complete highlight-parentheses zoom))
(package-initialize)

;; Quick snippet insertion: yasnippet
;; Quick highlighting and programming on Web: web-mode
;; Javascript Development: company-tern, js-mode, js2-refactor xref-js2, tern

;; Navigation: help, neotree

;; Project manager: Projectile

;; Tools: emmet-mode, centaur-tabs, web-beautify, auto-complete, highlight-parenthese,
;;        google-this
;; Git: magit

;; Appearance: beacon, solarized-theme, zoom


; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(provide 'init-package.el)
