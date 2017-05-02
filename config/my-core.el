;;
;; my-core.el
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; font
(defun font-exists-p (font)
  "check if font exists"
  (if (null (x-list-fonts font)) nil t))
(when window-system
  (if (font-exists-p "Terminus-12")
      (set-face-attribute 'default nil :font "Terminus-12"))
  )
;; disable bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; helm
(global-set-key (kbd "M-x") 'helm-M-x)

;; smooth scrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;; python3 as default python shell
(setq python-shell-interpreter "python3")

;; parenthesis matching
(show-paren-mode 1)

;; save and restore sessions
;(desktop-save-mode 1)

;; hide welcome screen
(setq inhibit-splash-screen t)

;; escape quits
(define-key isearch-mode-map [escape] 'isearch-abort)   ;; isearch
(define-key isearch-mode-map "\e" 'isearch-abort)   ;; \e seems to work better for terminals
(global-set-key [escape] 'keyboard-escape-quit)         ;; everywhere else

;; global magit-status keybind
(global-set-key (kbd "C-x g") 'magit-status)


;; line break at 80 chars
(setq-default fill-column 80)
(setq auto-fill-mode t)
(add-hook 'prog-mode-hook 'auto-fill-mode)
(add-hook 'prog-mode-hook 'electric-pair-mode)
(add-hook 'prog-mode-hook 'hl-line-mode)

;; powerline
(require 'powerline)
(powerline-default-theme)

;; theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
                                        ;(load-theme 'solarized-dark t)
                                        ;(load-theme 'zenburn t)

;(load-theme 'spacemacs-dark t)

;; paren-mode
(require 'paren)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-foreground 'show-paren-match "#def")
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)
(custom-set-faces '(show-paren-match ((t (:background "#292b2e" :foreground "lawn green" :weight extra-bold)))))

;; lockfiles are evil.
(setq create-lockfiles nil)

;; line numbers
;; toggel with <f12>
(global-linum-mode t)
(global-set-key (kbd "<f12>")
                'linum-mode)
;; prompt change
(defalias 'yes-or-no-p 'y-or-n-p)

;; inhibit splash screen
(setq inhibit-startup-message t)

;; number columns in the status bar
(column-number-mode)

;; c-style
(setq c-default-style "awk"
      c-basic-offset 4
      tab-width 4)

(setq-default indent-tabs-mode nil)

;; don't litter my filesystem
;; garbage files
(defconst garbage-files-directory "~/.garbage/")
(setq
 backup-by-copying t      ; don't clobber symlinks
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)       ; use versioned backups

(setq backup-directory-alist
      `((".*" . ,garbage-files-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,garbage-files-directory t)))
(setq auto-save-list-file-prefix
      garbage-files-directory)

;; Only scroll one line when near the bottom of the screen, instead
;; of jumping the screen around.
(setq scroll-conservatively 9999
      scroll-preserve-screen-position t)

;; UTF-8 everything!
                                        ;(set-terminal-coding-system 'utf-8)
                                        ;(set-keyboard-coding-system 'utf-8)
                                        ;(set-selection-coding-system 'utf-8)
                                        ;(prefer-coding-system 'utf-8)

;; 1 space please
(setq sentence-end-double-space nil)

;; use X clipboard
(setq x-select-enable-clipboard t)

;; erc ssl
(setq tls-program '("openssl s_client -connect %h:%p -no_ssl2 -ign_eof
                                      -CAfile /home/ootput/.private/certs/CAs.pem
                                      -cert /home/ootput/.private/certs/nick.pem"
                    "gnutls-cli --priority secure256
                                --x509cafile /home/ootput/.private/certs/CAs.pem
                                --x509certfile /home/ootput/.private/certs/nick.pem -p %p %h"
                    "gnutls-cli --priority secure256 -p %p %h"))

;; from <https://github.com/bling/dotemacs/>
(defmacro after (feature &rest body)
  "After FEATURE is loaded, evaluate BODY."
  (declare (indent defun))
  `(eval-after-load ,feature
     '(progn ,@body)))

;; sudo edit files
(defun sudo-find-file (file-name)
  "Like find file, but opens the file as root."
  (interactive "FSudo Find File: ")
  (let ((tramp-file-name (concat "/sudo::" (expand-file-name file-name))))
    (find-file tramp-file-name)))

;; open visited file in default external program
(defun prelude-open-with (arg)
  "Open visited file in default external program.
   With a prefix ARG always prompt for command to use."
  (interactive "P")
  (when buffer-file-name
    (shell-command (concat
                    (cond
                     ((and (not arg) (eq system-type 'darwin)) "open")
                     ((and (not arg) (member system-type '(gnu gnu/linux gnu/kfreebsd))) "xdg-open")
                     (t (read-shell-command "Open current file with: ")))
                    " "
                    (shell-quote-argument buffer-file-name)))))

;; reindent entire file
(defun indent-entire-buffer ()
  "indent entire buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

;; markdown mode
(custom-set-variables
 '(markdown-command "/usr/bin/pandoc"))

(provide 'my-core)
