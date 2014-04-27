;; Setting up the mode
(defvar ceylon-mode-hook nil)

(defvar ceylon-mode-map
  (let ((ceylon-mode-map (make-keymap)))
    (define-key ceylon-mode-map "\C-j" 'newline-and-indent)
    ceylon-mode-map)
  "Keymap for Ceylon major mode.")

(add-to-list 'auto-mode-alist '("\\.ceylon" . ceylon-mode))

;; Control flow keywords
(defvar ceylon-control-flow-keywords
      '("assert"
        "break"
        "case"
        "catch"
        "else"
        "finally"
        "for"
        "function"
        "if"
        "switch"
        "then"
        "throw"
        "try"
        "while"))

;; Keywords for the Object Oriented paradigm
(defvar ceylon-class-keywords
      '("class"
        "extends"
        "interface"
        "module"
        "object"))

(defvar ceylon-special-keywords
      '("continue"
        "return"
        "super"
        "this"
        "outer"
        "value"
        "void"))

(defvar ceylon-type-keywords
      '("alias"
        "assign"
        "dynamic"
        "value"))

(defvar ceylon-operator-keywords
      '("exists"
        "in"
        "is"
        "nonempty"
        "of"))

(defvar ceylon-constraint-keywords
      '("satisfies"
        "given"
        "out"))

(defvar ceylon-package-keywords
      '("import"
        "package"))

(defvar ceylon-unused-keywords
      '("assembly"
        "abstracts"))

(defvar ceylon-doc-keywords
  '("doc" "by" "see" "throws" "tagged"))


(defvar ceylon-control-flow-keywords-regexp
  (regexp-opt ceylon-control-flow-keywords 'words))

(defvar ceylon-class-keywords-regexp
  (regexp-opt ceylon-class-keywords 'words))

(defvar ceylon-special-keywords-regexp
  (regexp-opt ceylon-special-keywords 'words))

(defvar ceylon-type-keywords-regexp
  (regexp-opt ceylon-type-keywords 'words))

(defvar ceylon-operator-keywords-regexp
  (regexp-opt ceylon-operator-keywords 'words))

(defvar ceylon-constraint-keywords-regexp
  (regexp-opt ceylon-constraint-keywords 'words))

(defvar ceylon-package-keywords-regexp
  (regexp-opt ceylon-package-keywords 'words))

(defvar ceylon-unused-keywords-regexp
  (regexp-opt ceylon-unused-keywords 'words))

(defvar ceylon-doc-keywords-regexp
  (regexp-opt ceylon-doc-keywords 'words))

;; Clear the memory allocated to the lists now that the regexp's are
;; created
(setq ceylon-control-flow-keywords nil)
(setq ceylon-class-keywords nil)
(setq ceylon-special-keywords nil)
(setq ceylon-type-keywords nil)
(setq ceylon-operator-keywords nil)
(setq ceylon-constraint-keywords nil)
(setq ceylon-package-keywords nil)
(setq ceylon-unused-keywords nil)
(setq ceylon-doc-keywords nil)

;; Creates the list for font-lock. Each class of keywords is given a
;; particular face.
(defvar ceylon-font-lock-keywords
  `((,ceylon-doc-keywords-regexp . font-lock-keyword-face)
    (,ceylon-control-flow-keywords-regexp . font-lock-keyword-face)
    (,ceylon-class-keywords-regexp . font-lock-keyword-face)
    (,ceylon-special-keywords-regexp . font-lock-keyword-face)
    (,ceylon-type-keywords-regexp . font-lock-type-face)
    (,ceylon-operator-keywords-regexp . font-lock-builtin-face)
    (,ceylon-constraint-keywords-regexp . font-lock-keyword-face)
    (,ceylon-package-keywords-regexp . font-lock-keyword-face)
    (,ceylon-unused-keywords-regexp . font-lock-warning-face)))

(define-derived-mode ceylon-mode java-mode
  "Ceylon mode"
  "Major mode for editing Ceylon files."
  (setq font-lock-defaults '((ceylon-font-lock-keywords)))
  ;; clear memory
  (setq ceylon-control-flow-regexp nil)
  (setq ceylon-class-regexp nil)
  (setq ceylon-special-regexp nil)
  (setq ceylon-type-regexp nil)
  (setq ceylon-operator-regexp nil)
  (setq ceylon-constraint-regexp nil)
  (setq ceylon-package-regexp nil)
  (setq ceylon-unused-regexp nil)
  (setq ceylon-doc-regexp nil))

(provide 'ceylon-mode)
