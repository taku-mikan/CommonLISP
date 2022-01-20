(defun supp-cube(bk)
    (if ( > (length (member 'cube
                    (mapcar #'(lambda (b) 
                        (third (first (fetch (list b 'shape '?)))))
                        (supporters bk)
                    )))
        0)
    t nil)
) 

;; bkを支えている(bk' supports bk)をfirstで取ってくる
;; -> supperters関数
;; 各上の結果に対して(mapcar) (bk' shape ?)をfetchしてきて、
;; その結果のfirstのthirdを取ってきてそれがcubeかどうか判断する