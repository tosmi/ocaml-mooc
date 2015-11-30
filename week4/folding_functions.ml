(*

Write a function sorted : ('a -> 'a -> int) -> 'a list -> bool, using
List.fold_left that checks that a list of elements l of type 'a is
sorted, according to an ordering function cmp of type 'a -> 'a ->
int.

The ordering function returns:

    1 (or any positive number) if the first element is greater than the second,
    -1 (or any negative number) if the first element is lesser than the second,
    and 0 otherwise.

For the fold_left part, you can use the type 'a option as the
accumulator: at each iteration of fold_left, if the list if sorted
until now, the acccumulator is either Some v, where v is the previous
element, or None otherwise.

Remember, the empty list is sorted, so you can use the list with at
least one element to check using fold_left.

 *)
let for_all p l =
  List.fold_left (fun a x -> if p x && a then true else false) true l
;;

let exists p l =
  List.fold_left (fun a x -> if p x || a then true else false) false l
;;

let sorted cmp l =
  "Replace this stirng with your implementation."

(*
      List.fold_left
    (fun (opta : 'a option) e ->
       match opta with
       | Some(prev_elem) when (cmp prev_elem e) <= 0 -> Some(e)
       | _ -> None)
    Some(List.hd l)
    List.tl l

 *)
