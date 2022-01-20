(defun my_append (x y)
    (if (null x) 
        y
        (cons (first x) (my_append (rest x) y))))0