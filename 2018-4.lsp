(defun myfindif (func x)
    (cond ( (null x) nil)
          ( ( funcall func (first x)) (first x))
          ( t (myfindif func (rest x)))
    )
)
;; (load "2018-4.lsp")
;; (myfindif #'oddp '(0 1 2 3))
;; (myfindif #'(lambda (x) (> x 3)) '(3 4 5))
;; (myfindif #'(lambda (x) (> x 8)) '(3 4 5))