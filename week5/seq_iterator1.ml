(*  Printing with loops (105 points possible)

    Using the for loop construct, write an output_multiples : int -> int -> int -> unit function that prints all the multiples of x in the integer interval n ... m, separated by commas (',').
    Define a higher order function display_sign_until_zero: (int -> int) -> int -> unit that takes a function f, an integer m and applies f from 0 to m using a for loop. The function will print "negative" if the result of f if strictly negative and "positive" if strictly positive. Each print should appear on a new line.
    Your function has to stop displaying the signs as soon as f returns 0. In this case, it must print a last "zero".
    To implement this, you will define your own exception, raise it from inside the loop to break it, and catch it outside of the loop so that the function returns a successful (). You cannot use a predefined exception.

The given prelude

let is_multiple i x = i mod x = 0

 *)

let output_multiples x n m =
  "Replace this string with your implementation." ;;

let display_sign_until_zero f m =
  "Replace this string with your implementation."
