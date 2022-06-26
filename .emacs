(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; BACKUP DIRECTORY
(setq backup-directory-alist '(("." . "~/.saves")))

;; TAB SIZE
(setq-default tab-width 3)


;; LINE NUMBER MODE
(linum-relative-global-mode 1)


;; DISABLE BARS
(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)

;; SPLASH SCREEN
(setq inhibit-startup-message t)

;; Compile
(global-set-key (kbd "M-£") 'compile)

;; CALL TERM
(global-set-key (kbd "M-<return>") 'term)

;; STRING RECTANGLE
(global-set-key (kbd "M-]") 'string-rectangle)


;; FONT SIZE
(set-face-attribute 'default nil :height 120)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
	["#282828" "#fb4934" "#b8bb26" "#fabd2f" "#83a598" "#cc241d" "#8ec07c" "#ebdbb2"])
 '(custom-enabled-themes '(doom-one))
 '(custom-safe-themes
	'("835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" "c4063322b5011829f7fdd7509979b5823e8eea2abf1fe5572ec4b7af1dd78519" "db3e80842b48f9decb532a1d74e7575716821ee631f30267e4991f4ba2ddf56e" default))
 '(exwm-floating-border-color "#504945")
 '(fci-rule-color "#7c6f64")
 '(highlight-tail-colors ((("#363627" "#363627") . 0) (("#323730" "#323730") . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#0d1011" "#fabd2f"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#0d1011" "#b8bb26"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#0d1011" "#928374"))
 '(objed-cursor-color "#fb4934")
 '(package-selected-packages
	'(darkroom olivetti emmet-mode go lsp-ui go-mode seethru company company-c-headers doom-modeline doom-themes linum-relative lsp-mode move-text multiple-cursors turkish yasnippet yasnippet-snippets))
 '(pdf-view-midnight-colors (cons "#ebdbb2" "#282828"))
 '(rustic-ansi-faces
	["#282828" "#fb4934" "#b8bb26" "#fabd2f" "#83a598" "#cc241d" "#8ec07c" "#ebdbb2"])
 '(vc-annotate-background "#282828")
 '(vc-annotate-color-map
	(list
	 (cons 20 "#b8bb26")
	 (cons 40 "#cebb29")
	 (cons 60 "#e3bc2c")
	 (cons 80 "#fabd2f")
	 (cons 100 "#fba827")
	 (cons 120 "#fc9420")
	 (cons 140 "#fe8019")
	 (cons 160 "#ed611a")
	 (cons 180 "#dc421b")
	 (cons 200 "#cc241d")
	 (cons 220 "#db3024")
	 (cons 240 "#eb3c2c")
	 (cons 260 "#fb4934")
	 (cons 280 "#e05744")
	 (cons 300 "#c66554")
	 (cons 320 "#ac7464")
	 (cons 340 "#7c6f64")
	 (cons 360 "#7c6f64")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; INSTALL
;;(package-refresh-contents)
;;(package-install-selected-packages )

;; MULTIPLE CURSORS
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;; MOVE LINE
(global-set-key (kbd "M-p") 'move-text-line-up)
(global-set-key (kbd "M-n") 'move-text-line-down)

;; COMPANY
(add-hook 'after-init-hook 'global-company-mode)

;; YASNIPPET
(require 'yasnippet)
(yas-global-mode 1)

;; CCPP
(require 'cc-mode)
(require 'company)
(setq company-clang-executable "/usr/bin/clang")

;;TURKISH
(require 'turkish)

;; COVER TO TURKISH LAYOUT
(global-set-key (kbd "C-}") 'turkish-correct-region)

(require 'doom-modeline)
(doom-modeline-mode 1)
;; (set-frame-font "Hack Nerd Font Mono 12" nil t)
;; (setenv "PATH" (concat "/home/bur4k/go/bin:"
;;     	    (getenv "PATH")))


;; Company mode
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)

;; Go - lsp-mode
;; Set up before-save hooks to format buffer and add/delete imports.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

