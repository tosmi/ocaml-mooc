let first_word str =

;;


let words str =
  let len = String.length str in
  let rec aux i word lst =
    if i = len then
      List.rev (word::lst)
    else
      match str.[i] with
      | ' ' -> aux (i+1) "" (word::lst)
      | _ -> aux (i+1) (word ^ Char.escaped str.[i]) lst
  in
  (aux 0 "" [])
;;

let wordlist = words "mein name ist, hase und";;

type ltable = (string * string list) list;;

let rec build_ltable words =
  let ltable = [("START",[List.hd words])] in
  let rec find_succ word list =
    match list with
    | [] -> []
    | x::y::xs when x = word -> y::(find_succ word xs)
    | x::y when x = word -> y
    | x::y -> []

  in
  match words with
  | x::xs -> (x, find_succ x words)::(build_ltable xs)
  | []   -> ltable
;;

build_ltable wordlist;;
