;; find-if : リストに述語を適用していき最初に真となった要素を返す
(defun nexttrain (time data)
    (find-if #'(lambda (x) (> (first x) time)) data)
)