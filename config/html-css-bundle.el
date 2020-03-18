(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . company-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . company-mode))

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))


;; (require 'web-mode)
;; (require 'css-mode)
;; (add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))
;; (add-to-list 'auto-mode-alist '("\\.html\\'" . html-mode))

;; (add-hook 'html-mode-hook 'web-mode)
;; (add-hook 'css-mode-hook 'web-mode)



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


;; (require 'lsp-mode)
;; (add-hook 'web-mode-hook #'lsp)

(provide 'html-css-bundle)
