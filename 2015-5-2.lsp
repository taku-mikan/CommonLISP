(defun rank (x)
    (first x)
)
(defun suit (x)
    (second x)
)
(defun count-suit (mark data)
    (length (remove-if-not #'(lambda (x)
        (equal (suit x) mark)) data)
    )
)