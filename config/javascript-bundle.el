;;This is all config for javascript development packages

(require 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))


;; Using rjsx - auto - don't need to code'
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



(provide 'javascript-bundle)
