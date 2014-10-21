;;; klang-mode.el --- Major mode for klang

;; Copyright (C) 2014 NoNameA 774

;; Author:  NoNameA 774 (nonamea774@nnn77) <nonamea774@gmail.com>
;; Created: 2014/10/21
;; Keywords: major-mode

;; This file is not part of GNU Emacs.

;;; License
;; This program is published in accordance with the GNU General Public License v3.0.
;; Full text of the license : <http://www.gnu.org/licenses/gpl.html>

;;; Usage
;; Place this file on ~/elisp/ or other valid folder
;; Write (require 'klang-mode) on your .emacs.d


(require 'generic)

(define-generic-mode 'klang-mode
  '(("{~" . "~}"))
  '("and"
    "or"
    "not"
    "def"
    "var"
    "if"
    "else"
    "while"
    "for"
    "break"
    "continue"
    "return"
   )
  '(("int" . 'font-lock-type-face)
    ("~~.*" . 'font-lock-comment-face)
    ("+" . 'font-lock-operator)
    ("-" . 'font-lock-operator)
    ("*" . 'font-lock-operator)
    ("/" . 'font-lock-operator)
    ("%" . 'font-lock-operator)
    (":=" . 'font-lock-operator)
    (":+=" . 'font-lock-operator)
    (":-=" . 'font-lock-operator)
    (":*=" . 'font-lock-operator)
    (":/=" . 'font-lock-operator)
    (":%=" . 'font-lock-operator)
    ("=" . 'font-lock-operator)
    ("=/" . 'font-lock-operator) ;; --
    ("<" . 'font-lock-operator)
    (">" . 'font-lock-operator)
    ("<=" . 'font-lock-operator)
    (">=" . 'font-lock-operator)
    ("->" . 'font-lock-operator)
    ;; (";" . 'font-lock-builtin)
    ("def\\s-+\\([A-Za-z_][A-Za-z0-9_]*\\)\\s-*(" 1 font-lock-function-name-face)
    ("def\\s-+\\(var\\s-+\\)?\\([A-Za-z_][A-Za-z0-9_]*\\)\\s-*:=" 2 font-lock-variable-name-face)
    )
  '("\\.klang$")
  (list (lambda () (setq comment-start "{~"))
        (lambda () (setq comment-end "~}")))
  "Major mode for klang")

(provide 'klang-mode)
