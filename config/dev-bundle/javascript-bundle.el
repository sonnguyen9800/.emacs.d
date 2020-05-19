;;This is all config for javascript development packages

(require 'js2-mode)
(setq js2-basic-offset 2)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(require 'company)
(require 'company-tern)



(add-hook 'rjsx-mode-hook
          (lambda ()
            (add-hook 'before-save-hook
                      (lambda ()
                        (if indent-tabs-mode
                            (tabify (point-min) (point-max))
                          (untabify (point-min) (point-max))
                          ))
                      nil
                      t)))


(require 'ag)
(require 'js2-refactor)
(require 'xref-js2)

(js2r-add-keybindings-with-prefix "C-c C-r")
(define-key js2-mode-map (kbd "C-k") #'js2r-kill)

;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so
;; unbind it.
(define-key js-mode-map (kbd "M-.") nil)

(add-hook 'js2-mode-hook (lambda ()
  (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))


;; Edit with RJSX:
;;(js2r-add-keybindings-with-prefix "C-c C-r")
(add-hook 'rjsx-mode-hook (lambda ()
  (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))


(provide 'javascript-bundle)
