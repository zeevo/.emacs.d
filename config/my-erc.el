;;
;; my-erc.el
;; shane o'neill
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load "~/.ercpass")
(require 'erc-services)
(erc-services-mode 1)

(setq erc-prompt-for-nickserv-password nil)
(setq erc-default-server "irc.lug.udel.edu")

(setq erc-nickserv-passwords
    `((freenode     (("zeevo" . ,freenode-nickone-pass)))))

(setq erc-autojoin-channels-alist
      '(;("irc.rizon.net" "#/g/punk")
        ;("rizon.net" "#/g/punk")
        ;("rizon.sexy" "#/g/punk")
        ("lug.udel.edu" "#lug")))
;(erc :server "irc.rizon.net" :port 6667 :nick "zeevo")
;(erc :server "irc.lug.udel.edu" :port 6667 :nick "sho")

(provide 'my-erc)
