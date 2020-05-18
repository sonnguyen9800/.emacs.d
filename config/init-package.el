;;Package to be installed:
(setq package-list '(magit ag
		     js2-refactor xref-js2 rjsx-mode js2-mode
		     yasnippet web-mode 			   			   
		     helm neotree beacon solarized-theme centaur-tabs dashboard
		     projectile
		     php-mode company-php php-auto-yasnippets json-mode
		     flycheck ido-vertical-mode 
		     linum smart-tabs-mode smart-semicolon
		     emmet-mode highlight-parentheses zoom))
(package-initialize)

;; Quick snippet insertion: yasnippet
;; Quick highlighting and programming on Web: web-mode
;; Javascript Development: rjsx-mode

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
