;;
;; my-skewer.el
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'skewer-mode)


(add-to-list 'auto-mode-alist (cons (rx ".js" eos) 'js2-mode))

(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)

(provide 'my-skewer)
