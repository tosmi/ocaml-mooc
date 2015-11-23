let rec compose l = match l with
  | x::xs when xs = [] -> (function a -> x a)
  | x::xs -> (function a -> x (compose xs a))
;;

compose  [((+) 10); ((/) 4); ((-) 7); ((-) 7); ((+) 10); ((/) 4); ((-) 7); ((+) 10); ((/) 4)] -1;;

((+) 10) 5  ;;

  (compose [((+) 10); ((/) 10); ((+) 3)]) 2;;

    (compose [((+) 10)]) 2;;

(function a -> (function a -> x a)) (())


(function _ -> ((+) 1)) 1;;

    1;;

let rec fixedpoint f start delta =
 "Replace this string with your implementation." ;;
