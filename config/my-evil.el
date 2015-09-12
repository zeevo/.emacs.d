;;
;; evil
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; In order to work properly, we need to load evil-leader-mode before we load
;; evil-mode.
;(use-package evil-leader
;               :commands (evil-leader-mode global-evil-leader-mode)
;               :ensure evil-leader
;               :demand evil-leader
;               :init
;               (progn
;                   (evil-leader/set-leader ",")
;                   (global-evil-leader-mode t)))
(global-evil-leader-mode)
(evil-mode 1)

;; other evil rebinds
(define-key evil-normal-state-map (kbd "q") nil)
(define-key evil-normal-state-map (kbd "Q") 'evil-record-macro)

;; esc quits
;(define-key evil-normal-state-map [escape] 'keyboard-quit)
;(define-key evil-visual-state-map [escape] 'keyboard-quit)
;(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
;(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
;(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
;(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
;(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

(eval-after-load "evil"
  '(progn
     (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
     (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
     (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
     (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)))

(provide 'my-evil)
