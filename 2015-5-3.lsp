(defun rank (x)
    (first x)
)
(defun suit (x)
    (second x)
)

(defun black-cards (data)
    (remove-if-not #'(lambda (x)
        (or (equal (suit x) 'club)
            (equal (suit x) 'spade))) data
    )
)