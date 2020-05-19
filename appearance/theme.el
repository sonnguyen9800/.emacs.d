(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(require 'all-the-icons)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

(require 'helm-config)

;; Load theme: solarized-theme
(load-theme 'solarized-dark t)


(provide 'theme)
