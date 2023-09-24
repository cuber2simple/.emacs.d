(use-package restart-emacs)

(use-package benchmark-init
  :init(benchmark-init/activate)
  :hook(after-init . benchmark-init/deacitivate))

(provide 'init-package)
