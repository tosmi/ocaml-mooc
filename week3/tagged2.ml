(*


The previous week, we asked you the following question: Consider a non
empty array of integers a, write a function min_index : int array ->
int that returns the index of the minimal element of a.  As the arrays
contain integers and the indices of arrays are also represented by
integers, you might have confused an index and the content of a
cell. To avoid such a confusion, let us define a type for index (given
in the prelude below).  This type has a single constructor waiting for
one integer.  For instance, if you want to represent the index 0, use
the value Index 0.  Defining such a type is interesting because it
allows the type-checker to check that an integer is not used where an
index is expected (or the converse).

    Write a function read : int array -> index -> int such that read a
    (Index k) returns the k-th element of a.

    Write a function inside : int array -> index -> bool such that
    inside a idx is true if and only if idx is a valid index for the
    array a.

    Write a function next : index -> index such that next (Index k) is
    equal to Index (k + 1).  Consider a non empty array of integers a,
    write a function min_index : int array -> index that returns the
    index of the minimal element of a.

 *)

let a1 = [| 1; 2; 3 |];;

a1.(3);;

let f a ( x: int) = x;;

type index = Index of int;;

let read a (i : index)  = match i with
  | Index i -> a.(i);;

read a1 (Index 1);;

let inside a (index : index) = match index with
  | Index index ->
     if index > 0 && index < ()Array.length a) - 1 then
       true
     else
       false
;;

inside a1 (Index 3);;

let next index =
  "Replace this string with your implementation." ;;

let min_index a =
  "Replace this string with your implementation." ;;
