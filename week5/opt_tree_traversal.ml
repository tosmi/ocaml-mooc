(*



In a previous exercise, we defined binary trees of type 'a bt (given
in the prelude).  A binary search tree is balanced if, for all
internal node n, its two subtrees have the same height.

You wrote then a function height for balanced trees, and a function
balanced that checks whether a tree is balanced, that looked like the
ones given in the template.  This code is quite elegant, but not the
most efficient. In this exercise we will improve it using exceptions.

1.  Without changing their algorithms, instrument height and balanced
    to make them return also the number of visits of leaves (each
    encounter of an Empty constructor counts for 1, Nodes are not
    counted). The functions should now be typed height : 'a bt -> int
    * int and balanced : 'a bt -> bool * int where the right part of
    the result pair is the number of visits.

    When rewriting balanced, don't forget to include the results of
    all the calls to height in the total sum. You should also remember
    that if the left hand side of a (&&) is false, the rest is not
    executed, so be cautious in your rewriting to have the same
    behaviour (adding ifs if necessary), otherwise you could end up
    calling height more than the original version.


2.  We now define an exception Unbalanced of int, that we use in a
    function bal_height : 'a bt -> int * int that returns the height
    of a balanced tree, with the number of visits of leaves and raises
    Unbalanced n if the input tree is not balanced. The exception must
    be raised as soon as possible, when the first pair of subtrees
    with different heights is encountered. The parameter n of the
    exception is the number of visits of leaves up to the
    exception. You may have to define an auxiliary recursive function
    that takes an additional parameter containing the number of visits
    already done during the start of the traversal.

3.  Define now an improved version balanced_fast : 'a bt -> bool *
    int, that uses bal_height and returns a boolean indicating whether
    the input tree is balanced, and the number of visits.

The given prelude

type 'a bt =
  | Empty
  | Node of 'a bt * 'a * 'a bt ;;

exception Unbalanced of int ;;

 *)

let rec height = function
  | Empty -> 0
  | Node (t, _, t') -> 1 + (max (height t) (height t')) ;;

let rec balanced = function
  | Empty -> true
  | Node (t, _, t') ->
      (balanced t) && (balanced t') && height t = height t' ;;

let bal_height bst =
  "Replace this string with your implementation." ;;

let balanced_fast bst =
  "Replace this string with your implementation." ;;
