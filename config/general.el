;;This find focus on changes such as WindowSize, Appearance and so on.

;;To disable the menu-bar-mode
(menu-bar-mode -1)
;;To disable the scrollbar, use the following line:
(toggle-scroll-bar -1)
;;To disable the toolbar, use the following line:
(tool-bar-mode -1)

(global-set-key (kbd "C-z") 'undo)


;; Glolbal Set: comment/uncomment region:
(global-set-key (kbd "C-/") 'comment-or-uncomment-region)

;; Setup linum mode
(require 'linum)
(setq linum-format
      (lambda (line)
        (propertize (number-to-string (1- line)) 'face 'linum)))

(global-linum-mode 1)



;; Starting emacs at fullscreen:
(add-to-list 'default-frame-alist '(fullscreen . maximized))


;; Add youtube quick search function:
(defun er-youtube ()
  "Search YouTube with a query or region if any."
  (interactive)
  (browse-url
   (concat
    "http://www.youtube.com/results?search_query="
    (url-hexify-string (if mark-active
                           (buffer-substring (region-beginning) (region-end))
                         (read-string "Search YouTube: "))))))

(global-set-key (kbd "C-c y") #'er-youtube)

;; Add wikipedia quick search function:

(defun er-wikipedia ()
  "Search YouTube with a query or region if any."
  (interactive)
  (browse-url
   (concat
    "https://wikipedia.org/w/index.php?search="
    (url-hexify-string (if mark-active
                           (buffer-substring (region-beginning) (region-end))
                         (read-string "Search Wikipedia: "))))))

(global-set-key (kbd "C-c w") #'er-wikipedia)

(defun er-google ()
  "Search Google"
  (interactive)
  (browse-url
   (concat
    "https://www.google.com/search?q="
    (url-hexify-string (if mark-active
                           (buffer-substring (region-beginning) (region-end))
                         (read-string "Search Google: "))))))

(global-set-key (kbd "C-c g") #'er-google)



;; Set keybinding for save:
(global-set-key (kbd "C-c s") 'save-buffer )
(global-set-key (kbd "C-x s") 'save-buffer )
(global-set-key (kbd "C-c C-s") 'save-buffer )



;; Toggle between fullscreen and window mode
(defun toggle-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                           'fullboth)))
(global-set-key [(meta return)] 'toggle-fullscreen)

;; Windmove Setup: https://www.emacswiki.org/emacs/WindMove
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
(windmove-default-keybindings 'meta)


;; Fixing revert-buffer:
(defun revert-buffer-no-confirm ()
    "Revert buffer without confirmation."
    (interactive)
    (revert-buffer :ignore-auto :noconfirm))

(global-set-key
  (kbd "<f5>")
  (lambda (&optional force-reverting)
    "Interactive call to revert-buffer. Ignoring the auto-save
 file and not requesting for confirmation. When the current buffer
 is modified, the command refuses to revert it, unless you specify
 the optional argument: force-reverting to true."
    (interactive "P")
    ;;(message "force-reverting value is %s" force-reverting)
    (if (or force-reverting (not (buffer-modified-p)))
        (revert-buffer :ignore-auto :noconfirm)
      (error "The buffer has been modified"))))


(provide 'general)
