;;; init-const.el --- define some constants
;;; Commentary:
;;; Code:
(defconst *is-mac* (eq system-type 'darwin))
(defconst *is-linux* (eq system-type 'gnu/linux))
(defconst *is-windows* (or (eq system-type 'ms-doc)
			   (eq system-type 'windows-nt)))

(provide 'init-const)
;;; init-const.el ends here
