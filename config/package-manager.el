;;This is for package manager and etc

;;===================== Yasnippet =========
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (yasnippet-snippets ## yasnippet))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; For yas - snippet generator
(require 'yasnippet)
(yas-global-mode 1)
;;===================== Javascript Dev ====
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;; Better imenu
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)

(require 'js2-refactor)
(require 'xref-js2)

(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-r")
(define-key js2-mode-map (kbd "C-k") #'js2r-kill)

;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so
;; unbind it.
(define-key js-mode-map (kbd "M-.") nil)

(add-hook 'js2-mode-hook (lambda ()
  (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))

;;===================== Company-mode ==========================
(setq company-minimum-prefix-length 1)



;;===================== Tern: https://github.com/ternjs/tern ===
(require 'company)
(require 'company-tern)
(add-to-list 'company-backends 'company-tern)
(add-hook 'js2-mode-hook (lambda ()
                           (tern-mode)
                           (company-mode)))
                           
;; Disable completion keybindings, as we use xref-js2 instead
(define-key tern-mode-keymap (kbd "M-.") nil)
(define-key tern-mode-keymap (kbd "M-,") nil)

;;===================== Tern-auto-complete
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))

(defun delete-tern-process ()
  (interactive)
  (delete-process "Tern"))


;;===================== Beacon: https://github.com/Malabarba/beacon

(beacon-mode 1)

;;===================== Setup Helm:
(require 'helm-config)

(require 'helm)
(global-set-key (kbd "C-x d") 'helm-find-files)
(global-set-key (kbd "C-x C-d") 'helm-find-files)
(global-set-key (kbd "C-x f") 'helm-find-files)


(customize-set-variable 'helm-ff-lynx-style-map t)

(with-eval-after-load 'helm-files
(define-key helm-find-files-map (kbd "C-j") 'helm-find-files-up-one-level)
(define-key helm-find-files-map (kbd "C-l") 'helm-execute-persistent-action)
 )
(with-eval-after-load 'helm)

;;===================== Setup Emmet
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation
(global-set-key (kbd "C-<tab>") 'emmet-expand-line)


;;===================== Setup Projectile

(require 'projectile)

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c C-p") 'projectile-command-map)
(setq projectile-project-search-path '("~/Projects/"))

(projectile-mode +1)

;;==================== Setup magit

(global-set-key (kbd "C-x g s") 'magit-status)
(global-set-key (kbd "C-x g p") 'magit-push-popup)

;;==================== Setup electric-pair-mode

(electric-pair-mode 1)

;;==================== Setup web-beautify
(require 'web-beautify) ;; Not necessary if using ELPA package
(eval-after-load 'js2-mode
  '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))
;; Or if you're using 'js-mode' (a.k.a 'javascript-mode')
(eval-after-load 'js
  '(define-key js-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'json-mode
  '(define-key json-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'sgml-mode
  '(define-key html-mode-map (kbd "C-c b") 'web-beautify-html))

(eval-after-load 'web-mode
  '(define-key web-mode-map (kbd "C-c b") 'web-beautify-html))

(eval-after-load 'css-mode
  '(define-key css-mode-map (kbd "C-c b") 'web-beautify-css))

;;==================== Setup auto-completion mode
;;(add-hook 'js-mode-hook (lambda () (auto-completion-mode t)))

(require 'auto-complete-config)
(global-auto-complete-mode t)


;;==================== Setup centaurs-tab
(require 'centaur-tabs)
(centaur-tabs-mode t)
(global-set-key (kbd "C-c -")  'centaur-tabs-backward)
(global-set-key (kbd "C-c =") 'centaur-tabs-forward)
(setq centaur-tabs-set-icons t)
(setq centaur-tabs-gray-out-icons 'buffer)
(setq centaur-tabs-set-bar 'over)


;;===================== Setup highlight-parentheses
(require 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)

;;===================== Setup zoom: github.com/cyrus-and/zoom
(custom-set-variables
 '(zoom-mode t))
(custom-set-variables
 '(zoom-size '(0.618 . 0.618)))


;;==================== Setup google-this: https://github.com/Malabarba/emacs-google-this

(global-set-key (kbd "C-x g-o") 'google-this-mode-submap)
(google-this-mode 1)



;;=================== Setup php-mode: https://github.com/emacs-php/php-mode
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))



(provide 'package-manager)
