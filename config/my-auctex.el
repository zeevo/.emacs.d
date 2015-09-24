;;
;; my-auctex.el
;; shane o'neill
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'flyspell)

(setq TeX-PDF-mode t)

;; spell-checking
(setq-default ispell-program-name "aspell")
(setq ispell-dictionary "english")

(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-buffer)

(provide 'my-auctex)
