type 'a bt =
  | Empty
  | Node of 'a bt * 'a * 'a bt ;;

exception Unbalanced of int ;;

let bal_height bst =
  let rec aux v = function
    | Node (Empty, _, Empty) -> (1,v+2)
    | Node (Empty, _, Node(_)) -> raise (Unbalanced (v+1))
    | Node (Node(_), _, Empty) -> raise (Unbalanced (v+1))
    | Empty -> (0,1)
    | Node (t, _, t') ->
        let (h,v) = (aux v t) in
        let (h',v') = (aux v t') in
        (0+(max h h'),v+v')
  in aux 0 bst
;;


bal_height (Node (Node (Empty, 'q', Empty), 'n', Node (Empty, 'r', Empty)));;
