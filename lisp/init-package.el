;;; init-package.el --- use for install and setting package
;;; Commentary:
;;; Code:
(use-package restart-emacs)

(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate))

(use-package crux
  :bind (("C-c k" . 'crux-smart-kill-line)
	 ("C-c ^" . 'crux-top-join-line)
	 ("C-x ," . 'crux-find-user-init-file)))

(use-package drag-stuff
             :bind (("<M-up>" . drag-stuff-up)
                    ("<M-down>" . drag-stuff-down)))
(use-package ivy
  :defer 1
  :demand
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
	ivy-initial-inputs-alist nil
	ivy-count-format "%d/%d "
	enable-recursive-minibuffers t
	ivy-re-builders-alist '((t . ivy--regex-ignore-order))))


(use-package counsel
  :after (ivy)
  :bind (("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)
	 ("C-c f" . counsel-recentf)
	 ("C-c g" . counsel-git)))

(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
	 ("C-r" . swiper-isearch-backward))
  :config (setq swiper-action-recenter t
		swiper-include-line-number-in-search t))

(use-package which-key
  :defer nil
  :config (which-key-mode))

(use-package company
  :hook (after-init . global-company-mode)
  :config (setq company-minimum-prefix-length 1
                company-show-quick-access t))
(use-package flymake
  :hook (prog-mode . flymake-mode)
  :config
  (global-set-key (kbd "M-n") #'flymake-goto-next-error)
  (global-set-key (kbd "M-p") #'flymake-goto-prev-error))

(use-package ivy-posframe
  :demand t
  :after ivy
  :custom
  (ivy-posframe-display-functions-alist '((swiper . ivy-posframe-display-at-window-bottom-left)
					  (complete-symbol . ivy-posframe-display-at-window-bottom-left)
					  (counsel-M-x . ivy-posframe-display-at-window-bottom-left)
					  (counsel-find-file . ivy-posframe-display-at-window-bottom-left)
					  (ivy-switch-buffer . ivy-posframe-display-at-window-bottom-left)
					  (t . ivy-posframe-display-at-window-bottom-left)))
  :config
  (ivy-posframe-mode))

(provide 'init-package)
