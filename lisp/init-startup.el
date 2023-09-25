(prefer-coding-system 'utf-8)
(unless *is-windows*
  (set-selection-coding-system 'utf-8))

(setq gc-cons-threshold most-positive-fixnum)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(add-hook 'porg-mode-hook 'display-like-numbers-mode)
(setq inhibit-startup-screen t)

(provide 'init-startup)
