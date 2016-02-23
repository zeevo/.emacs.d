;;
;; init.el
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'package)

(push '("marmalade" . "http://marmalade-repo.org/packages/")
              package-archives)
(push '("melpa" . "http://melpa.milkbox.net/packages/")
              package-archives)

(add-to-list 'load-path (concat user-emacs-directory "config"))

(package-initialize)

; packages I use
(setq package-list '(use-package auto-complete helm web-mode simple-httpd
                      js2-mode skewer magit evil-magit evil-org flyspell
                      evil-leader evil zenburn-theme solarized-theme neotree
                      dired-hacks-utils dired-ranger))

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
    (unless (package-installed-p package)
          (package-install package)))

(require 'use-package)

(require 'linum-off)
(require 'tls)
(require 'magit)
(require 'evil-magit)
(require 'simple-httpd)
(require 'js2-mode)

(require 'my-evil)
(require 'my-evil-leader)
(require 'my-core)
(require 'my-neotree)
(require 'my-ibuffer)
(require 'my-dired)
;(require 'my-erc)
(require 'my-orgmode)
(require 'my-skewer)
(require 'my-web-mode)
(require 'my-auto-complete)

(require 'tramp)
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
