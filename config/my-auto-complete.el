;;
;; my-auto-complete.el
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'auto-complete)

(require 'jquery-doc)

(ac-config-default)
(add-hook 'js2-mode-hook 'jquery-doc-setup)
(ac-linum-workaround)

(provide 'my-auto-complete)
