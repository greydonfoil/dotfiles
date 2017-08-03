;; doom-molokai-theme.el --- inspired by Textmate's monokai
(require 'doom-themes)

;;
(defgroup gf-doom-molokai-theme nil
  "Options for doom-molokai."
  :group 'doom-themes)

(defcustom gf-doom-molokai-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'gf-doom-molokai-theme
  :type 'boolean)

(defcustom gf-doom-molokai-padded-modeline nil
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
determine the exact padding."
  :group 'gf-doom-molokai-theme
  :type '(or integer boolean))

;;
(def-doom-theme gf-doom-molokai
  "A dark, vibrant theme inspired by Textmate's monokai."

  ;; name        gui       256       16
  ((bg         '("#1c1e1f" nil       nil))
   (bg-alt     '("#222323" nil       nil))
   (base0      '("#000000"))
   (base1      '("#151617" "#101010" "brightblack"))
   (base2      '("#1d1f20" "#191919" "brightblack"))
   (base3      '("#2d2e2e" "#252525" "brightblack"))
   (base4      '("#4e4e4e" "#454545" "brightblack"))
   (base5      '("#555556" "#6b6b6b" "brightblack"))
   (base6      '("#767679" "#7b7b7b" "brightblack"))
   (base9      '("#767677" "#7b7b7b" "brightblack"))
   (base77      '("#888888" "#c1c1c1" "brightblack"))
   (base71      '("#aad4db" "#c1c1c1" "brightblack"))
   (base7      '("#cccccc" "#c1c1c1" "brightblack"))
   (base8      '("#ffffff" "#ffffff" "brightwhite"))
   (fg         '("#d6d6d4" "#dfdfdf" "brightwhite"))
   (fg-alt     '("#556172" "#4d4d4d" "white"))

   (grey       '("#525254" "#515154" "brightblack"))
   (red        '("#e74c3c" "#e74c3c" "red"))
   (orange     '("#fd971f" "#fd971f" "brightred"))
   (lightorange '("#ffb629" "#fd971f" "brightred"))
;;   (green      '("#b6e63e" "#b6e63e" "green"))
   (green      '("#c2f542" "#c2f542" "green"))
   (teal       green)
   (yellow     '("#e2c770" "#e2c770" "yellow"))
   (blue       '("#268bd2" "#2686D6" "brightblue"))
   (dark-blue  '("#727280" "#727280" "blue"))
   (magenta    '("#fb2874" "#fb2874" "magenta"))
   (violet     '("#9c91e4" "#9c91e4" "brightmagenta"))
   (cyan       '("#66d9ef" "#66d9ef" "brightcyan"))
   (dark-cyan  '("#8fa1b3" "#8FA1B3" "cyan"))

   ;; face categories
   (highlight      orange)
   (vertical-bar   base4)
   (selection      base0)
   (builtin        orange)
   (comments       (if gf-doom-molokai-brighter-comments violet base77))
   (doc-comments   (if gf-doom-molokai-brighter-comments (doom-lighten violet 0.1) (doom-lighten base7 0.25)))
   (constants      orange)
   (functions      green)
   (keywords       magenta)
   (methods        cyan)
   (operators      magenta)
   (type           yellow)
   (strings        base71)
   (variables      orange)
   (numbers        violet)
   (region         base4)
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    base4)
   (vc-added       (doom-darken green 0.15))
   (vc-deleted     red)

   ;; custom categories
   (-modeline-pad
    (when gf-doom-molokai-padded-modeline
      (if (integerp gf-doom-molokai-padded-modeline)
          gf-doom-molokai-padded-modeline
        4)))

   ;; (org-quote `(,(doom-lighten (car bg) 0.00) base2)))
    (org-quote `(,(doom-lighten (car bg) 0.05) "#1f1f1f")))


  ;; --- extra faces ------------------------
  ;; Note that you can always use 'C-u C-x =' to see the face of the point at any cursor position!
  ((lazy-highlight :background violet :foreground base0 :distant-foreground base0 :bold bold)
   (cursor :background magenta)

   (mode-line
    :background base3 :foreground base8
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color base3)))
   (mode-line-inactive
    :background (doom-darken base2 0.2) :foreground base4
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color base2)))
   (doom-modeline-bar :background green)

   (doom-modeline-buffer-modified :inherit 'bold :foreground orange)
   (doom-modeline-buffer-path :inherit 'bold :foreground green)

   (line-number :foreground base5 :distant-foreground nil :bold nil)
   (line-number-current-line :foreground base7 :distant-foreground nil :bold nil)

   (isearch :foreground base0 :background green)

   ;; highlight line
   (hl-line :background base3)

   ;; evil-mode
   (evil-search-highlight-persist-highlight-face :background violet)

   ;; evil-snipe
   (evil-snipe-first-match-face :foreground base0 :background green)
   (evil-snipe-matches-face     :foreground green :underline t)

   ;; flycheck
   (flycheck-error   :underline `(:style wave :color ,red)    :background base3)
   (flycheck-warning :underline `(:style wave :color ,yellow) :background base3)
   (flycheck-info    :underline `(:style wave :color ,green)  :background base3)

   ;; helm
   (helm-swoop-target-line-face :foreground magenta :inverse-video t)

   ;; ivy
   (ivy-current-match :background base5)
   (ivy-minibuffer-match-face-1 :background base1) ;; non-matching portions of the line
   (ivy-minibuffer-match-face-2 :foreground orange :bold bold) ;; first match
   (ivy-minibuffer-match-face-3 :foreground blue :bold bold) ;; second match
   (ivy-minibuffer-match-face-4 :foreground green :bold bold) ;; third match

   ;; swiper
   (swiper-line-face :background base5 :foreground base8)
   (swiper-match-face-1 :background base1) ;; non-match
   (swiper-match-face-2 :background orange :bold bold) ;; first match
   (swiper-match-face-3 :background blue :bold bold) ;; second match
   (swiper-match-face-4 :background green :bold bold) ;; third match

   ;; neotree
   (neo-dir-link-face   :foreground cyan)
   (neo-expand-btn-face :foreground magenta)

   ;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground magenta)
   (rainbow-delimiters-depth-2-face :foreground orange)
   (rainbow-delimiters-depth-3-face :foreground green)
   (rainbow-delimiters-depth-4-face :foreground cyan)
   (rainbow-delimiters-depth-5-face :foreground magenta)
   (rainbow-delimiters-depth-6-face :foreground orange)
   (rainbow-delimiters-depth-7-face :foreground green)


   ;; --- major-mode faces -------------------
   ;; css-mode / scss-mode
   (css-proprietary-property :foreground keywords)

   ;; markdown-mode
   (markdown-blockquote-face :inherit 'italic :foreground dark-blue)
   (markdown-list-face :foreground magenta)
   (markdown-pre-face  :foreground cyan)
   (markdown-link-face :inherit 'bold :foreground blue)
   (markdown-code-face :background (doom-lighten base2 0.045))

   ;; org-mode http://orgmode.org/w/?p=org-mode.git;a=blob_plain;f=lisp/org-faces.el;hb=HEAD
   (org-level-1 :background base2 :foreground magenta :bold bold :height 1.0)
   (org-level-2 :inherit 'org-level-1 :foreground orange :background base2)
   (org-level-3 :bold bold :foreground yellow :background base2 )
   (org-level-4 :bold bold :foreground cyan :background base2)
   (org-level-5 :bold bold :foreground blue :background base2)
   (org-ellipsis :underline nil :background base2 :foreground orange)
   (org-tag :foreground yellow :bold nil)
   (org-quote :inherit 'italic :foreground base7 :background org-quote)
   (org-todo :foreground yellow :bold 'inherit)
   ;; Source code:
   (org-block :foreground base7 :background base1)
   (org-block-begin-line :foreground base6 :background base2 :bold bold)

   (org-link :foreground green :bold bold)
   (org-list-dt :foreground yellow)
   )

  ;; --- extra variables --------------------
  ;; ()
  )

;;; doom-molokai-theme.el ends here
