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
    bbdb
    boxquote
    cdlatex
    ledger-mode
    visual-fill-column
    zotelo
    org-page
    ))

(if (eq system-type 'windows-nt)
    (push 'ssh-agency org-config-packages))

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

(defun org-config/init-ssh-agency ()
  "Initialize ssh-agency"
  (use-package ssh-agency
    :if (eq system-type 'windows-nt)
    :defer t
    :config
    (progn
      (setq ssh-agency-keys '("~/.ssh/github-key"
                             "~/.ssh/bitbucket-key")))))

(defun org-config/init-visual-fill-column ()
  "Initialize visual-fill-column"
  (use-package visual-fill-column
    :init
    (add-hook 'visual-line-mode-hook 'visual-fill-column-mode)
    ;; 最好将word-wrap的值设为nil，否则中英文混排时换行都发生在英文单词结束处，非常难看。
    (add-hook 'visual-line-mode-hook
              '(lambda ()
                (set (make-local-variable 'word-wrap) nil)))))

;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/org-configiegley/use-package
