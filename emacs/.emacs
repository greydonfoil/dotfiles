;; Red Hat Linux default .emacs initialization file
(menu-bar-mode -1)

;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; (load-theme 'badwolf-theme-source-code)
;; (load-theme 'molokai-theme)
;; (load-theme 'mustard-theme)


;; for themes:
;; https://github.com/bkruczyk/badwolf-emacs
;; -- for new packages, you might have to run: M-x package-refresh-contents
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
;;             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;; then run: M-x package-install RET badwolf-theme RET

(global-set-key (kbd "C-x g") 'magit-status)
			 

(add-to-list 'load-path "~/.emacs.d/modules/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/modules/ac-dict")
(ac-config-default)
(define-key ac-completing-map "\C-m" nil)

;; M-x package-install RET ivy swiper counsel     (maybe just need 'swiper')
;; Config options for ivy
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
;;(global-set-key "\C-r" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
;; end config options for ivy




(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-startup-truncated nil)
(setq org-agenda-files (list "~/Dropbox/org/school.org"
                             "~/Dropbox/org/wettergreen_notes.org"
                             "~/Dropbox/org/misc.org"
                             "~/Dropbox/org/home.org"))

;; PDFs visited in Org-mode are opened in Evince (and not in the default choice) http://stackoverflow.com/a/8836108/789593
(add-hook 'org-mode-hook
      '(lambda ()
         (delete '("\\.pdf\\'" . default) org-file-apps)
         (add-to-list 'org-file-apps '("\\.pdf\\'" . "evince %s"))))


(require 'php-mode)

(add-hook 'php-mode-hook
  '(lambda () (define-abbrev php-mode-abbrev-table "ex" "extends")))

(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))


;; Set up the keyboard so the delete key on both the regular keyboard
;; and the keypad delete the character under the cursor and to the right
;; under X, instead of the default, backspace behavior.
(global-set-key [delete] 'delete-char)
(global-set-key [kp-delete] 'delete-char)

;;(setq case-fold-search t)

;; use cperl mode instead of the default perl mode
;;(autoload 'cperl-mode "/home/gfoil/.emacs.d/progmodes/cperl-mode.el")
;;(defalias 'perl-mode 'cperl-mode)

(autoload 'octave-mode "octave-mod" nil t)
	(setq auto-mode-alist
	(cons '("\\.m$" . octave-mode) auto-mode-alist))

;;(autoload 'matlab-mode "/usr0/home/gfoil/bin/emacs_matlab/matlab.el")
;;  (setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
;;  (autoload 'matlab-shell "matlab" "Interactive MATLAB mode." t)

;;(autoload 'matlab-mode "matlab" "Matlab Editing Mode" t)
;;(add-to-list
;;	'auto-mode-alist
;;	'("\\.m$" . matlab-mode))
;;(setq matlab-indent-function t)
;;(setq matlab-shell-command "matlab")

;;(require 'font-lock)
;;(global-font-lock-mode 1 t)
(if (fboundp 'global-font-lock-mode)
    (global-font-lock-mode 1)        ; GNU Emacs
  (setq font-lock-auto-fontify t))   ; XEmacs

;; show line number:
(setq line-number-mode t)

;;(setq menu-bar-mode 1)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;; always so auto-fill in text mode
;;;(add-hook 'text-mode-hook '(lambda () (auto-fill-mode 1))) ;turn-on-auto-fill 

;; no initial message:
(setq inhibit-startup-message t)

;;; Display time and date on the status line
(setq display-time-day-and-date t)
(display-time)

;;; Display an area as highlighted when you select it
(setq-default transient-mark-mode t)

;;; Case-insensitive file-complete
(setq read-file-name-completion-ignore-case t)
(setq completion-ignore-case t)

;;(setq x-select-enable-clipboard t)
;;(setq interprogram-paste-function 'x-cut-buffer-or-selection-value) ;; http://stackoverflow.com/questions/11186370/symbols-function-definition-is-void-x-cut-buffer-or-selection-value
;;(setq interprogram-paste-function 'x-selection-value)

;;; prompt before close
;;;(setq confirm-kill-emacs 'yes-or-no-p)

;;Comments in italics, only in windows
;;(setq w32-enable-italics t)
;;(make-face-italic 'font-lock-comment-face)

;;; show matching parens
(show-paren-mode t)

;;; start off in Z:/, doesn't work in linux  
;;(setq default-directory "Z:/")

;; Make all "yes or no" prompts show "y or n" instead
(fset 'yes-or-no-p 'y-or-n-p)

;; Open unidentified files in text mode
(setq default-major-mode 'text-mode)
;;(setq indent-tabs-mode t)

(setq-default indent-tabs-mode t)

;; start emacs maximized, screws up command-line emacs
;;(w32-send-sys-command 61488)
;;(if (window-system)
;;  (set-frame-height (selected-frame) 60)
;;  (set-frame-width (selected-frame) 200))

;; (setq auto-mode-alist
;;       (append '(("\\.esp$" . perl-mode)
;; 		("\\.pm$" . perl-mode)
;; 		("\\.sql$" . sql-mode)
;; 		("\\.tbl$" . sql-mode))
;; 	      auto-mode-alist))

;;; set mode depending on file name
(setq auto-mode-alist 
      '(("\\.org$" . org-mode) ("\\.py$" . python-mode) ("\\.esp$" . perl-mode) ("\\.pm$" . perl-mode) ("\\.sql$" . sql-mode) ("\\.text$" . text-mode) ("\\.notes$" . text-mode) ("\\.tmpl" . xml-mode) ("\\.c$" . c-mode) ("\\.h$" . c++-mode) ("\\.C$" . c++-mode) ("\\.cpp$" . c++-mode) ("\\.cc$" . c++-mode) ("\\.H$" . c++-mode) ("\\.tex$" . TeX-mode) ("\\.el$" . emacs-lisp-mode) ("\\.scm$" . scheme-mode) ("\\.l$" . lisp-mode) ("\\.lisp$" . lisp-mode) ("\\.f$" . fortran-mode) ("\\.mss$" . scribe-mode) ("\\.pl$" . perl-mode) ("\\.TeX$" . TeX-mode) ("\\.sty$" . LaTeX-mode) ("\\.bbl$" . LaTeX-mode) ("\\.bib$" . text-mode) ("\\.article$" . text-mode) ("\\.letter$" . text-mode) ("\\.texinfo$" . texinfo-mode) ("\\.lsp$" . lisp-mode) ("\\.prolog$" . prolog-mode) ("^/tmp/Re" . text-mode) ("^/tmp/fol/" . text-mode) ("/Message[0-9]*$" . text-mode) ("\\.y$" . c-mode) ("\\.scm.[0-9]*$" . scheme-mode) ("[]>:/]\\..*emacs" . emacs-lisp-mode) ("\\.ml$" . lisp-mode) ("\\.x$" . c-mode)))


;;(cond ((file-exists-p tags) (visit-tags-table tags)))

;;(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;;(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

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
	("066d4710e40eeb85aa7c72afa6c23d09dee4795bf4e450d4869324e917b5f64d" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "405b0ac2ac4667c5dab77b36e3dd87a603ea4717914e30fcf334983f79cfd87e" default)))
 '(indent-tabs-mode t)
 '(package-selected-packages
   (quote
	(magit mustard-theme molokai-theme markdown-mode counsel badwolf-theme)))
 '(paren-mode (quote paren) nil (paren))
 '(tab-stop-list
   (quote
	(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96)))
 '(tab-width 4))

;;(require 'mmm-mode)
(require 'dabbrev)

;;;
;;; Meta bindings
;;;

(define-key esc-map "g" 'goto-line)
(define-key esc-map "G" 'what-line)
(define-key esc-map "r" 'replace-string)
(define-key esc-map "o" 'other-window)
;; (define-key esc-map "p" 'switch-to-prev-buffer)
;; (define-key esc-map "n" 'switch-to-next-buffer)

;; Make control+pageup/down scroll the other buffer
(global-set-key [C-next] 'scroll-other-window)
(global-set-key [C-prior] 'scroll-other-window-down)

;;(global-set-key "\C-x\C-c" 'intelligent-close) ;forward reference
(global-set-key "\C-x\C-c" 'my-delete-frame)
(global-set-key "\C-x\C-m" 'execute-extended-command) ;; execute M-x w/o alt
(global-set-key "\C-c\C-m" 'execute-extended-command) ;; execute M-x w/o alt

;; kill a word. changes the Cut function as well. 
(global-set-key "\C-w"     'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)


;; (global-set-key [f1] 'goto-line) 
;; (global-set-key [f2] 'undo) 
;; (global-set-key [f1] '(lambda () (interactive) (jjj-insert-comment "//"))) 
;; (global-set-key [f2] '(lambda () (interactive) (jjj-delete-comment "//"))) 
;; (global-set-key [f3] '(lambda () (interactive) (jjj-insert-comment "%"))) 
;; (global-set-key [(shift f3)] 'comment-region) 
;; (global-set-key [f4] '(lambda () (interactive) (jjj-delete-comment "%")))
(global-set-key [(shift f4)] 'universal-argument)
(global-set-key [f5] 'shell)
;; (global-set-key [f6] 'remove-dos-eol) 

;;(global-set-key [f6] 'find-wiki-node)

;; (global-set-key [f7] 'split-window-vertically)
;; (global-set-key [f8] 'delete-other-windows) ; unsplit window
(global-set-key [f9] 'font-lock-mode)


;; (defun switch-to-prev-buffer ()
;;   (interactive)
;;   ;(message "switch to prev buffer")
;;   (cond ((equal *buffer-history-last* (buffer-list))
;; 	 ;; Same as last time
;; 	 ;(message "same")
;; 	 )
;; 	(t
;; 	 ;(message "different")
;; 	 (setq *buffer-history-original* (mapcar 'identity (buffer-list)))
;; 	 (setq *buffer-history-n* 0)))
;;   (switch-to-history-buffer 1))

;; (defun switch-to-next-buffer ()
;;   (interactive)
;;   ;(message "switch to next buffer")
;;   (cond ((equal *buffer-history-last* (buffer-list))
;; 	 ;; Same as last time
;; 	 ;(message "same")
;; 	 )
;; 	(t
;; 	 ;(message "different")
;; 	 (setq *buffer-history-original* (mapcar 'identity (buffer-list)))
;; 	 (setq *buffer-history-n* 0)))
;;   (switch-to-history-buffer -1))

(defun remove-dos-eol ()
  "Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

(defun my-delete-frame ()
  "Deletes the current frame. If this is the last frame, quit Emacs."
  (interactive)
  (if (cdr (frame-list))
      (delete-frame)
    (save-buffers-kill-emacs)))
;;(global-set-key [\M-f4] 'my-delete-frame)


;;Add perl print template
(defun insert-perl-print ()
  "Add perl print template"
  (interactive "*")
  (setq steve-var "print \"\\n\";")
  (insert steve-var)
)

;;; Code:
(defun jjj-delete-string (s)
  "Delete string S."  (interactive)
  (let ((n (length s)))
    (while (> n 0)
      (progn
        (delete-char 1)
        (setq n (- n 1)) ) ) )
  )

(defun jjj-backward-delete-string (s)
  "Backward delete string S."  (interactive)
  (let ((n (length s)))
    (while (> n 0)
      (progn
        (backward-delete-char 1)
        (setq n (- n 1)) ) ) )
  )


;;; ONE LINE COMMENTS:
(defun jjj-insert-comment (s)
  "Insert S at begin of line to comment line out."  (interactive)
  (progn
    (beginning-of-line)
    (progn
      (insert s)
      (beginning-of-line)
      (delete-horizontal-space)
      (beginning-of-line 2) )
    (recenter) )
  )

(defun jjj-delete-comment (s)
  "Delete S at begin of line to uncomment line."  (interactive)
  (progn
    (beginning-of-line)
    (progn
      (delete-horizontal-space)
      (jjj-delete-string s)
      (beginning-of-line 2) )
    (recenter) )
  )

;;This method, when bound to C-x C-c, allows you to close an emacs frame the 
;;same way, whether it's the sole window you have open, or whether it's
;;a "child" frame of a "parent" frame.  If you're like me, and use emacs in
;;a windowing environment, you probably have lots of frames open at any given
;;time.  Well, it's a pain to remember to do Ctrl-x 5 0 to dispose of a child
;;frame, and to remember to do C-x C-x to close the main frame (and if you're
;;not careful, doing so will take all the child frames away with it).  This
;;is my solution to that: an intelligent close-frame operation that works in 
;;all cases (even in an emacs -nw session).
(defun intelligent-close ()
  "quit a frame the same way no matter what kind of frame you are on"
  (interactive)
  (if (eq (car (visible-frame-list)) (selected-frame))
      ;;for parent/master frame...
      (if (> (length (visible-frame-list)) 1)
          ;;close a parent with children present
   (delete-frame (selected-frame))
        ;;close a parent with no children present
 (save-buffers-kill-emacs))
    ;;close a child frame
    (delete-frame (selected-frame))))
