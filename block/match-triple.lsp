(defun match-triple (k q)
    (every #'match-element k q)
)
; (load "match-triple.lsp")
; (match-triple '(B2 color red) '(B2 color red))
; (match-triple '(B2 color red) '(B2 color blue))