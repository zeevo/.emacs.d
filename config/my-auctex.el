;;
;; my-auctex.el
;; shane o'neill
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'flyspell)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-save-query nil)
(setq TeX-PDF-mode t)

;; spell-checking
(setq-default ispell-program-name "aspell")
(setq ispell-dictionary "english")

(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-buffer)

(provide 'my-auctex)
