;; drawline関数の定義
(defun drwaline (n)
    (cond ( (equal n 0) nil)
          ( t (format t "*")
              (drawline (- n 1)))    
    )
)

;; triangle 関数の定義
(defun triangle (n)
    (cond ((equal n 0) nil)
          (t (drawline n)
             (format t "~%")
             (triangle (- n 1)))    
    )
)