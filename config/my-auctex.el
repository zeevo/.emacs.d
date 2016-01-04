;;
;; my-auctex.el
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'flyspell)
(require 'tex)
(TeX-global-PDF-mode t)


;; spell-checking
(setq-default ispell-program-name "aspell")
(setq ispell-dictionary "english")

(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-buffer)

(provide 'my-auctex)
