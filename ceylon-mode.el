;; Setting up the mode
(defvar ceylon-mode-hook nil)

(defvar ceylon-mode-map
  (let ((ceylon-mode-map (make-keymap)))
    (define-key ceylon-mode-map "\C-j" 'newline-and-indent)
    ceylon-mode-map)
  "Keymap for Ceylon major mode.")

(add-to-list 'auto-mode-alist '("\\.ceylon" . ceylon-mode))

;; Control flow keywords
(setq ceylon-control-flow-keywords
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
(setq ceylon-class-keywords
      '("class"
        "extends"
        "interface"
        "module"
        "object"))

(setq ceylon-special-keywords
      '("continue"
        "return"
        "super"
        "this"
        "outer"
        "value"
        "void"))

(setq ceylon-type-keywords
      '("alias"
        "assign"
        "dynamic"
        "value"))

(setq ceylon-operator-keywords
      '("exists"
        "in"
        "is"
        "nonempty"
        "of"))

(setq ceylon-constraint-keywords
      '("satisfies"
        "given"
        "out"))

(setq ceylon-package-keywords
      '("import"
        "package"))

(setq ceylon-unused-keywords
      '("assembly"
        "abstracts"))
