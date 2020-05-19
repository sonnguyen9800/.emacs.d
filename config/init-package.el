;;Package to be installed:
(setq package-list '(magit ag projectile
		     js2-refactor xref-js2 rjsx-mode js2-mode		     
		     php-mode php-auto-yasnippets
		     json-mode web-mode yasnippet emmet-mode
		     lsp-mode
		     linum smart-tabs-mode smart-semicolon highlight-parentheses zoom neotree beacon solarized-theme centaur-tabs dashboard  ido-vertical-mode helm all-the-icons
		     typescript-mode ng2-mode
		     ))

(package-initialize)

;; Quick snippet insertion: yasnippet
;; Quick highlighting and programming on Web: web-mode
;; Javascript Development: rjsx-mode

;; React development: rjsx


;; Angular Development: typescript, ng2-mode


;; PHP Mode: php-mode, company-php




;; Navigation: help, neotree

;; Project manager: Projectile

;; Tools: emmet-mode, centaur-tabs, web-beautify, auto-complete, highlight-parenthese,
;;        google-this, dashboard, linum smart-tabs-mode
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
