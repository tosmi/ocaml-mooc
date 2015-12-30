(*

 Simple uses of references (50 points possible)

    Define swap : 'a ref -> 'a ref -> unit that swaps the contents of two references.

    Define update : 'a ref -> ('a -> 'a) -> 'a that calls a function on the contents of a reference, updates it with the result, and returns the old value.
    For instance let r = ref 6 in update r (function x -> x + 1) should return 6 and set the reference to 7.

    Define move: 'a list ref -> 'a list ref -> unit, that removes the top argument from the first list and puts it on top of the second list. If the first list is empty, it should raise Empty.
    A common pattern is to use a reference to perform a computation in an imperative way, but to keep it in a local definition, completely invisible from outside the function implementation.
n
    Define reverse: 'a list -> 'a list, that has a type and an observable behaviour that look like the ones of a purely functional function, buf that use a reference internally to perform the computation. It takes a list, and returns a copy of the list whose elements are in reverse order.

    The only functions you can call, except from locally defined functions, are (!), (:=), ref, and move that you just defined. And you are not allowed to use pattern matching.

The given prelude

exception Empty ;;



 *)

exception Empty;;

let la = ref [1;2;3];;
let lb = ref [5;];;

let swap ra rb =
  let t = ref !ra in
  ra := !rb;
  rb := !t;
;;

let update r f =
  let old = !r in
  r := f !r;
  old
;;

let move l1 l2 = match !l1 with
  | [] -> raise Empty
  | _  ->
     begin
       l2 := (List.hd !l1)::!l2;
       l1 := (List.tl !l1)
     end
;;

  List.hd !la;;
  List.tl !la;;

move la lb;;
la;;
lb;;

let reverse l =
  let a = ref l in
  let b = ref [] in
  let aux () =
    begin
    try
      while 1=1 do
	move a b;
      done
    with
      Empty -> ()
    end in
  aux (); !b
;;

let lc = [1;2;3;4];;
reverse lc;;
