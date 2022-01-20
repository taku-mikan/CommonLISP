; ある要素がリストの中にあるか判定する関数 : あればt
(defun desk1 (x y-list)
    (if (> (length (member x y-list)) 0) t nil)
)

; xの要素を一つずつ見ていく
(defun exor (x y)
    (cond ( (null x) nil)
          ( (not (desk1 (first x) y)) (cons (first x) y))
          ( t (exor (rest x) (rest y)))

    )
)



; ; ある要素がリストの中にあるか判定する関数 : あればt
; (defun desk1 (x list-y)
;     (if (> (length (member x list-y)) 0) t nil)
; )
; ; xの要素を一つずつ見ていきなかったら追加する
; (defun exor (x y)
;     (cond ( (null x) nil)
;           ( (not (desk1 (first x) y)) (cons (first x) y))
;           (t (exor (rest x) y))
;     )
; )
; ;; (load "2015-1.lsp")
;-> x y の集合を求める関数