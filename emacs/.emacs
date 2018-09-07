;; Make startup faster by reducing the frequency of garbage
;; collection.  The default is 800 kilobytes.  Measured in bytes.
(setq gc-cons-threshold (* 50 1000 1000))

(require 'cl)
(require 'package)
(package-initialize)

(require 'org)

;; Private settings file
(load "~/Dropbox/Personal/emacs_secrets.el" t)


;; Loads up .emacs.d/settings.org
(org-babel-load-file
 (expand-file-name "settings.org"
				   user-emacs-directory))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(add-to-list (quote custom-theme-load-path) t)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(c-basic-offset 4)
 '(cperl-close-paren-offset -4)
 '(cperl-continued-statement-offset 0)
 '(cperl-indent-level 4)
 '(cperl-indent-parens-as-block t)
 '(cperl-use-syntax-table-text-property t)
 '(cperl-use-syntax-table-text-property-for-tags t)
 '(custom-safe-themes
   (quote
	("7f1263c969f04a8e58f9441f4ba4d7fb1302243355cb9faecb55aec878a06ee9" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bbb4a4d39ed6551f887b7a3b4b84d41a3377535ccccf901a3c08c7317fad7008" "fdabf839497adf8cc601c90df240b52f1684a623988a2c138f4470b07868cabb" "15348febfa2266c4def59a08ef2846f6032c0797f001d7b9148f30ace0d08bcf" "11bd611c5f1f1dc9d540f699ed97255d5a38030821a0b0ec044498cab95f030b" "2411358c548f51f69c9e76a2b807a0e6e8ff9da99d737ffd53c1a5eea33ebcb2" "537489746e4ddd3537279f39a88710444bf87e5a8fbefc33a9e3d29163f5af65" "ec1685ac5336aecf95190dafcbbe53dc175b9cafdef6bf793a736d8706b58555" "10309e8b8b8f1c915085fafc29a0bd843a932ef352a39ded761f9748f518d0ba" "b8d7c73338addc5c9c111b1e66a72611338a4fe7320b7fbb32362e8ce4a752fd" "10c6c92d4ca028cc82b3fe13a4233434409624ab5403e9d557f17fce7e9b8a34" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "6f11ad991da959fa8de046f7f8271b22d3a97ee7b6eca62c81d5a917790a45d9" "611e38c2deae6dcda8c5ac9dd903a356c5de5b62477469133c89b2785eb7a14d" "b81bfd85aed18e4341dbf4d461ed42d75ec78820a60ce86730fc17fc949389b2" "365d9553de0e0d658af60cff7b8f891ca185a2d7ba3fc6d29aadba69f5194c7f" "a6e5edd129bc48c9540ab6ed4a76a2e4e0da6359e981a3ec0bffbeb4416d4cc9" "2d16a5d1921feb826a6a9b344837c1ab3910f9636022fa6dc1577948694b7d84" "f23a961abba42fc5d75bf94c46b5688c52683c02b3a81313dd0738b4d48afd1d" "3eb2b5607b41ad8a6da75fe04d5f92a46d1b9a95a202e3f5369e2cdefb7aac5c" "8d3c5e9ba9dcd05020ccebb3cc615e40e7623b267b69314bdb70fe473dd9c7a8" "066d4710e40eeb85aa7c72afa6c23d09dee4795bf4e450d4869324e917b5f64d" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "405b0ac2ac4667c5dab77b36e3dd87a603ea4717914e30fcf334983f79cfd87e" default)))
 '(fci-rule-color "#555556")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(indent-tabs-mode t)
 '(jdee-db-active-breakpoint-face-colors (cons "#000000" "#fd971f"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#000000" "#c2f542"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#000000" "#525254"))
 '(notmuch-search-line-faces
   (quote
	(("unread" :foreground "#aeee00")
	 ("flagged" :foreground "#0a9dff")
	 ("deleted" :foreground "#ff2c4b" :bold t))))
 '(org-agenda-files
   (quote
	("/home/gfoil/Dropbox/org/commands.org" "/home/gfoil/Dropbox/org/cpp.org" "/home/gfoil/Dropbox/org/gcal.org" "/home/gfoil/Dropbox/org/home.org" "/home/gfoil/Dropbox/org/journal.org" "/home/gfoil/Dropbox/org/mesh.org" "/home/gfoil/Dropbox/org/notes.org" "/home/gfoil/Dropbox/org/python.org" "/home/gfoil/Dropbox/org/timecard.org" "/home/gfoil/Dropbox/org/today.org")))
 '(org-tags-column 0)
 '(package-selected-packages
   (quote
	(json-mode company-lsp lsp-ui lsp-mode highlight-indent-guides magit-todos magit company-jedi treemacs ein skewer-mode websocket org-noter pdf-tools aggressive-indent edit-server-htmlize edit-server flatui-theme company-box org-projectile nxml-mode elfeed-org yasnippet-snippets yaml-mode xterm-color which-key web-mode visual-regexp-steroids validate use-package undo-tree treemacs-projectile symon spinner spacemacs-theme spaceline-all-the-icons smooth-scrolling rainbow-delimiters queue php-mode origami org-trello org-gcal org-bullets org-ac nyan-mode magithub jedi gruvbox-theme font-lock+ flycheck-ycmd eyebrowse esup elpy elfeed-goodies doom-themes diminish counsel company-ycmd cmake-mode clojure-mode bm badwolf-theme all-the-icons-ivy)))
 '(paren-mode (quote paren) nil (paren))
 '(tab-stop-list
   (quote
	(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96)))
 '(tab-width 4)
 '(vc-annotate-background "#1c1e1f")
 '(vc-annotate-color-map
   (list
	(cons 20 "#c2f542")
	(cons 40 "#cce551")
	(cons 60 "#d7d660")
	(cons 80 "#e2c770")
	(cons 100 "#ebb755")
	(cons 120 "#f3a73a")
	(cons 140 "#fd971f")
	(cons 160 "#fc723b")
	(cons 180 "#fb4d57")
	(cons 200 "#fb2874")
	(cons 220 "#f43461")
	(cons 240 "#ed404e")
	(cons 260 "#e74c3c")
	(cons 280 "#c14d41")
	(cons 300 "#9c4f48")
	(cons 320 "#77504e")
	(cons 340 "#555556")
	(cons 360 "#555556")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#1c1e1f" :foreground "#d6d6d4" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "DAMA" :family "Iosevka Term"))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0))))
 '(bm-fringe-persistent-face ((t (:background "dark orange" :foreground "White"))))
 '(bm-persistent-face ((t (:background "dark orange" :foreground "White")))))
;; add custom:
 ;; '(font-lock-builtin-face ((t (:foreground "#ffcb6b"))))
 ;; '(font-lock-constant-face ((t (:foreground "#C792EA"))))
 ;; '(font-lock-keyword-face ((t (:foreground "#2BA3FF" :slant italic))))
 ;; '(font-lock-preprocessor-face ((t (:inherit bold :foreground "#2BA3FF" :slant italic :weight normal))))
 ;; '(font-lock-string-face ((t (:foreground "#C3E88D"))))
 ;; '(font-lock-type-face ((t (:foreground "#FFCB6B"))))
 ;; '(font-lock-variable-name-face ((t (:foreground "#FF5370"))))
 ;; '(mode-line ((t (:background "#191919" :box nil))))
 ;; '(mode-line-inactive ((t (:background "#282828" :foreground "#5B6268" :box nil)))))
;; end custom
;; Make gc pauses faster by decreasing the threshold.
(setq gc-cons-threshold (* 2 1000 1000))
