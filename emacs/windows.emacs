;; Place this file in C:\Users\Username\AppData\Roaming and point to the appropriate files
;; If this is the first time you're loading emacs on windows, you need the GNUTLS library. Follow the instructions from the answer here:
;;    https://emacs.stackexchange.com/questions/27202/how-do-i-install-gnutls-for-emacs-25-1-on-windows
;; Check that it works: M-: (gnutls-available-p) RET

;; I'd recommend not having your $HOME set to C:/. This will make C:/.emacs the default init file and will ignore the windows-specific init in AppData/Roaming/.emacs.

(setq inhibit-compacting-font-caches t)
(setq org-ellipsis "*")

(setq user-init-file "G:/.emacs")
(setq user-emacs-directory "G:/.emacs.d/")
(setq default-directory "G:/")
(setenv "HOME" "G:/")
(load user-init-file)
