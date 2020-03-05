;;This find focus on changes such as WindowSize, Appearance and so on.

;;To disable the menu-bar-mode
(menu-bar-mode -1)
;;To disable the scrollbar, use the following line:
(toggle-scroll-bar -1)
;;To disable the toolbar, use the following line:
(tool-bar-mode -1)

(let ((filename (concat user-emacs-directory "hello.txt")))
  (when (file-exists-p filename)
    (let ((scratch-buf (get-buffer "*scratch*")))
      (when scratch-buf
        (with-current-buffer scratch-buf
          (erase-buffer)
          (insert-file-contents filename))))))

(let ((file "~/.emacs.d/hello.txt"))
  (when (file-exists-p file)
    (setq initial-scratch-message
      (with-temp-buffer
        (insert-file-contents file)
        (buffer-string)))))

(global-set-key (kbd "C-z") 'undo)


(provide 'general)
