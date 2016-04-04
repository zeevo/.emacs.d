;;
;; my-skewer.el
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'skewer-mode)


(add-to-list 'auto-mode-alist (cons (rx ".js" eos) 'js2-mode))

(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-strict-missing-semi-warning t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-error ((t nil)))
 '(js2-warning ((t nil))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("20e359ef1818a838aff271a72f0f689f5551a27704bf1c9469a5c2657b417e6c" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(js2-strict-missing-semi-warning t)
 '(web-mode-enable-auto-closing t)
 '(web-mode-enable-auto-quoting nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-error ((t nil)))
 '(js2-warning ((t nil))))

(provide 'my-skewer)
