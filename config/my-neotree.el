;;
;; my-neotree.el
;; shane o'neill
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'neotree)

;; if neotree isn'open -> neotree-find
;; else -> neo-tree show
;(global-set-key (kbd "<f4>") (lambda ()
;			       (interactive)
;			 (if (neo-global--window-exists-p)
;			     (neotree-hide)
;			   (neotree-find))))
(global-set-key (kbd "<f4>") 'neotree-toggle)

(evil-define-key 'normal neotree-mode-map
  (kbd "RET") 'neotree-enter
  (kbd "c")   'neotree-create-node
  (kbd "r")   'neotree-rename-node
  (kbd "D")   'neotree-delete-node
  (kbd "j")   'neotree-next-line
  (kbd "k")   'neotree-previous-line
  (kbd "SPC") 'neotree-change-root
  (kbd "q")   'neotree-hide
  (kbd "l")   'neotree-enter
  (kbd "i")   'neotree-enter-horizontal-split
  (kbd "I")   'neotree-enter-vertical-split
  (kbd "H")   'neotree-hidden-file-toggle
  )

(provide 'my-neotree)
