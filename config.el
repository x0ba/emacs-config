;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Daniel Xu"
      user-mail-address "danielxu0307@proton.me")

(setq doom-font
      (font-spec :family "JetBrainsMono Nerd Font"
                 :size (if (eq system-type 'darwin) 14 17))
      doom-variable-pitch-font
      (font-spec :family "Inter"
                 :size (if (eq system-type 'darwin) 14 17)))

(setq doom-theme 'doom-gruvbox)

;; (setq display-line-numbers-type nil)
(setq display-line-numbers-type 'relative)

(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))

(setq fancy-splash-image (file-name-concat doom-user-dir "splash.png"))
(setq +doom-dashboard-functions '(doom-dashboard-widget-banner))

(setq-default
 delete-by-moving-to-trash t                      ; Delete files to trash
 window-combination-resize t                      ; take new window space from all other windows (not just current)
 x-stretch-cursor t)                              ; Stretch cursor to the glyph width

(setq undo-limit 80000000                         ; Raise undo-limit to 80Mb
      evil-want-fine-undo t                       ; By default while in insert all changes are one big blob. Be more granular
      auto-save-default t                         ; Nobody likes to loose work, I certainly don't
      truncate-string-ellipsis "…"                ; Unicode ellispis are nicer than "...", and also save /precious/ space
      password-cache-expiry nil                   ; I can trust my computers ... can't I?
      ;; scroll-preserve-screen-position 'always     ; Don't have `point' jump around
      scroll-margin 2                             ; It's nice to maintain a little margin
      display-time-default-load-average nil)      ; I don't think I've ever found this useful

(display-time-mode 1)                             ; Enable time in the mode-line
(global-subword-mode 1)                           ; Iterate through CamelCase words

(add-to-list 'default-frame-alist '(height . 24))
(add-to-list 'default-frame-alist '(width . 80))

(setq evil-vsplit-window-right t
      evil-split-window-below t)

(defadvice! prompt-for-buffer (&rest _)
  :after '(evil-window-split evil-window-vsplit)
  (consult-buffer))

(setq org-directory "~/Documents/notes")

(use-package! websocket
    :after org-roam)

(use-package! org-roam-ui
    :after org-roam ;; or :after org
    ;; :hook (after-init . org-roam-ui-mode)
    :config
    (setq org-roam-ui-sync-theme t
          org-roam-ui-follow t
          org-roam-ui-update-on-save t
          org-roam-ui-open-on-start t))

(setq corfu-auto-delay 0.5)
