(require 'cl)
(require 'package)
(package-initialize)

(require 'org)

;; Loads up .emacs.d/settings.org
(org-babel-load-file
 (expand-file-name "settings.org"
				   user-emacs-directory))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
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
 '(custom-enabled-themes (quote (badwolf)))
 '(custom-safe-themes
   (quote
	("2d16a5d1921feb826a6a9b344837c1ab3910f9636022fa6dc1577948694b7d84" "f23a961abba42fc5d75bf94c46b5688c52683c02b3a81313dd0738b4d48afd1d" "3eb2b5607b41ad8a6da75fe04d5f92a46d1b9a95a202e3f5369e2cdefb7aac5c" "8d3c5e9ba9dcd05020ccebb3cc615e40e7623b267b69314bdb70fe473dd9c7a8" "066d4710e40eeb85aa7c72afa6c23d09dee4795bf4e450d4869324e917b5f64d" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "405b0ac2ac4667c5dab77b36e3dd87a603ea4717914e30fcf334983f79cfd87e" default)))
 '(indent-tabs-mode t)
 '(package-selected-packages
   (quote
	(gruvbox-theme sunshine ivy-hydra hydra use-package undo-tree all-the-icons-ivy magit mustard-theme molokai-theme markdown-mode counsel badwolf-theme)))
 '(paren-mode (quote paren) nil (paren))
 '(tab-stop-list
   (quote
	(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96)))
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bm-fringe-persistent-face ((t (:background "dark orange" :foreground "White"))))
 '(bm-persistent-face ((t (:background "dark orange" :foreground "White")))))
