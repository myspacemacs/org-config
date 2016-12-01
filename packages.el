;;; packages.el --- org-config Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq org-config-packages
      '(
        org-page
        ;; org-crypt
        s
        dash
        (helm-org-rifle :location (recipe :fetcher github :repo "alphapapa/helm-org-rifle") )
        ))
(defun org-config/init-org-page ()
  "Initialize org-page"
  (use-package org-page
    :defer t
    :init (with-eval-after-load 'org
            (require 'org-page)
            )
    ))

(defun org-config/init-helm-org-rifle()
  "Initialize org-page"
  (require 'helm-org-rifle)
  )
(defun org-config/init-s()
  "Initialize org-page"
  (require 's)
  )

(defun org-config/init-dash()
  "Initialize org-page"
  (require 'dash)
  )





;; (defun org-config/init-org-crypt ()
;;   "Initialize org-crypt"
;;   (use-package org-crypt
;;     :defer t
;;     :init (with-eval-after-load 'org
           
;;             (require 'org-crypt)
;;             )
;;     ))

;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/org-configiegley/use-package
