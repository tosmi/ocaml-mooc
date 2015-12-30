let rec loop p f x =
  if p x then
    x
  else
    loop p f (f x)
;;

let rec exists p = function
  | [] -> false
  | x::xs when p x -> true
  | x::xs -> exists p xs
;;

let rec find p = function
  | [] -> raise NotFound
  | x::xs when p x -> x
  | x::xs -> find p xs
;;

(* --- Part A: A Generic Problem Solver --- *)

let near x =
  (x-2)::(x-1)::x::(x+1)::(x+2)::[];;


type 'e rel = 'e -> 'e list;;

let near x =
  (x-2)::(x-1)::x::(x+1)::(x+2)::[];;


let rec flat_map r = function
  | [] -> []
  | x::xs -> (r x)@(flat_map r xs)
;;

  flat_map near [2];;

let iter_rel rel n x = iter n (flat_map rel) [x];;

let rec iter_rel rel n =
    if n < 2 then
      rel
    else
      iter_rel (flat_map rel) (pred n)
;;

let x = flat_map near;;

x [1;2];;

  iter_rel near 3 2;;

  iter_rel near 2 2;;

let x = near 2;;
  flat_map near x;;

flat_map near near 2;;

near 4;;

let y = flat_map (function y -> near y)));;

y (near 2);;

(flat_map near (near 2));;

  near (near 2);;

near 0;;
near 1;;
near 2;;
