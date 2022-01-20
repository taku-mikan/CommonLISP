;; match-element
(defun match-element (a b)
    (or (equal a b)
        (equal b '?))
)
;; match-triple
(defun match-triple (k q)
    (every #'match-element k q)
)
;; fetch
(defun fetch (q)
    (remove-if-not #'(lambda (x) (match-triple x q)) blockdata)
)
;; 与えられた形状のもののリストを取ってくる関数
(defun shapeblock (x)
    (mapcar #'first (fetch (list '? 'shape x)))
)