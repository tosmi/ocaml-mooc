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

let iter_rel rel n x =
  let rec aux n =
    if n < 2 then
      rel x
    else
      flat_map rel (aux (n-1))
  in
  aux n
;;

iter_rel succ 2 1;;

exception NotFound;;

let solve r p x =
  if p x then
    x
  else
    let rec aux n = function
      | [] -> aux (n+1) (iter_rel r n x)
      | hd::tl when p hd -> hd
      | hd::tl ->
	 match tl with
	 | [] -> aux (n+1) (iter_rel r n hd)
	 | x::xs when p x -> x
	 | x::xs -> aux n (r x)
    in
    aux 2 (r x)
;;

let solve r p x =
  if p x then
    x
  else
    let rec aux n = function
      | [] -> aux (n+1) (iter_rel r (n+1) x)
      | x::xs when p x -> x
      | x::xs -> aux n xs
    in
    aux 1 (iter_rel r 1 x)
;;

  iter_rel near 2 0 ;;

  near 0;;

let solve_path r p x =
  if p x then
    [x]
  else
;;


  solve succ (power_of 2) 5;;
  solve pred (power_of 2) 89;;
    succ 5;;

pred 70;;

iter_rel succ 1 5;;

let test = function
  | [] -> "empty"
  | x::xs -> "x::xs"
;;
test [];;

let succ x = [x+1];;
let pred x = [x-1];;
let even x = (x mod 2) = 0;;
let odd x = not (even x);;

let rec power_of n x =
  let r = x mod n in
  if x = 1 then
    true
  else if r = 0 then
    power_of n (x/n)
  else
    false
;;

power_of 3 10;;

( mod 2);;

pred 2;;
succ 2;;

solve succ even 57;;
solve pred odd 56;;

solve succ even 80;;



  solve near (fun x -> x = 12) 0;;
