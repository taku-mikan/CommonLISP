;; match-element
(defun match-element (a b)
     (or (equal b a)
         (equal b '?))
)
;; match-triple
(defun match-triple(k q)
    (every #'match-element k q )
)
;; fetch
(defun fetch (q)
    (remove-if-not #'(lambda (x) (match-triple x q)) blockdata)
)
;; 引数のブロックの色を取ってくる
(defun desk1 (bl)
    (third (first (fetch (list bl 'color '?))))
)
;; 同じ色のブロックをリストの形で取ってくる
(defun desk2 (bl)
    (fetch (list '? 'color (desk1 bl)))
)
;; ブロック名だけ抜いてくる
(defun sameshape (bl)
    (remove-if #'(lambda (x) (equal x bl))
        (mapcar #'first (desk2 bl)))
)
