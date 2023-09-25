
(add-to-list 'load-path
	     (expand-file-name
	      (concat user-emacs-directory "lisp")))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(setq backup-directory-alist (quote (("." . "~/.emacs-backups"))))
(defalias 'yes-or-no-p 'y-or-n-p)


(require 'init-const)
(require 'init-kbd)
(require 'init-startup)
(require 'init-elpa)
(require 'init-package)
(require 'init-ui)

(when (file-exists-p custom-file)
  (load-file custom-file))



