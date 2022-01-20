;; 引数で与えたものの形状を(一つ目で明示的に)取り出す関数
(defun desk1 (bk)
    (third (first (fetch (list bk 'shape '?))))
)
;; desk1の返り値の形状をもつものをfetchで取ってくる(bk 'shape desk1)
(defun desk2 (bk)
    (fetch (list '? 'shape (desk1 bk)))
)
;; desk2で取ってきたリストの各要素の最初を取ってくる
;; bkはremove-if-notで取り除く
(defun sameshape (bk)
    (remove-if #'(lambda (x) (equal x bk))
                (mapcar #'first (desk2 bk)))
)
