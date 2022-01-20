;; match-element
(defun match-element(a b)
    (or (equal b a)
        (equal b '?))    
)
;; match-triple
(defun match-triple(k q)
    (every #'match-element k q)
)
;; fetch
(defun fetch (q data)
    (remove-if-not #'(lambda (x) (match-triple x q)) data)
)
;; 目的地が一致するものを取ってくる
(defun desk1 (goal data)
    (fetch (list '? '? goal) data)
)
;; desk1で取ってきたものの長さを返し最終出力
(defun tcount (goal data)
    (length (desk1 goal data))
)
