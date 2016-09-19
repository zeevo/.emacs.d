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

;; C-c C-c without prompt, use LaTex by default
(setq TeX-command-force "LaTex")
;; Use C-c C-c to compile the tex file into pdf file automatically using LaTex,
;; and C-c C-v to view it using okular
;; NOTE: C-c C-a to combine C-c C-c and C-c C-v"
(setq TeX-view-program-list
      '(("PDF Viewer" "evince -p %(outpage) %o")))

(provide 'my-auctex)
