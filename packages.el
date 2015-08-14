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
    ;; package org-configs go here
    bbdb
    boxquote
    cdlatex
    ledger-mode
    zotelo
    ox-gfm
    org-page
    org-plus-contrib
    ))

(setq org-config-excluded-packages '())

;; For each package, define a function org-config/init-<package-org-config>
;;
;; (defun org-config/init-my-package ()
;;   "Initialize my package"
;;   )
;;

(defun org-config/init-bbdb ()
  "Initialize bbdb"
  (use-package bbdb
    :defer t))

(defun org-config/init-boxquote ()
  "Initialize boxquote"
  (use-package boxquote
    :defer t))

(defun org-config/init-cdlatex ()
  "Initialize cdlatex"
  (use-package cdlatex
    :defer t
    :init (add-hook 'org-mode-hook 'turn-on-org-cdlatex)))

(defun org-config/init-ledger-mode ()
  "Initialize ledger-mode"
  (use-package ledger-mode
    :defer t))

(defun org-config/init-org-page ()
  "Initialize org-page"
  (use-package org-page
     :defer t
     :init (require 'org-page)
    ))

(defun org-config/init-zotelo ()
  "Initialize zotelo"
  (use-package zotelo
    :defer t))

(defun org-config/init-ox-gfm ()
  "Initialize ox-gfm"
  (use-package ox-gfm
    :defer t
    :init (require 'ox-gfm)
))
(defun org-config/init-org-plus-contrib ()
  "Initialize org-plus-contrib"
  (use-package org-plus-contrib
    :defer t))


;; often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/org-configiegley/use-package
