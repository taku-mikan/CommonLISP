;; (? 属性名 ?)のものをfetchしてくる
;; 各リストの三番目を取ってきてリストにまとめる
;; リストから重複要素を取り除く
;; https://lisphub.jp/common-lisp/cookbook/index.cgi?%E3%83%AA%E3%82%B9%E3%83%88%E3%81%8B%E3%82%89%E9%87%8D%E8%A4%87%E3%81%97%E3%81%9F%E8%A6%81%E7%B4%A0%E3%82%92%E5%8F%96%E3%82%8A%E9%99%A4%E3%81%8F
(defun desk1 (val)
    (fetch (list '? val '?))
)
(defun desk2 (val)
    (mapcar #'third (desk1 val))
)
(defun vals (val)
    (remove-duplicates (desk2 val))
)

;; (load "2018-7-1.lsp")
;; (fetch (list '? 'shape '?))
;; (third (fetch (list '? 'shape '?))))
;; (mapcar #'third (fetch (list '? 'shape '?))))
;; ((B1 SHAPE BRICK) (B2 SHAPE BRICK) (B3 SHAPE BRICK) (B4 SHAPE PYRAMID)
;; (B5 SHAPE CUBE) (B6 SHAPE BRICK))

; (defun match-element (a b)
;     (or (equal a b)
;         (equal b '?))
; )
; (defun match-triple(k q)
;     (mapcar #'match-element k q)
; )
; (defun fetch (q)
;     (remove-if-not #'(lambda (x) (match-triple x q)) blockdata)
; )