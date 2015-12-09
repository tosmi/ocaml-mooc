(*
Every triangle has a circumscribed circle, that is a circle that
goes through the three points of a given triangle. Trigonometry tells
us that the radius of this circle is

 s/2*cos(a/2)*2*cos(b/2)*2*cos(c/2)

where a, b and c are the angles of the triangle, and s is its
circumference.

Define a function ccr: float -> float -> float -> float -> float that
takes as arguments a, b, c and s, and returns the radius of
circumscribed circle as described above.  Update ccr so that it does
as much work as possible when partially applied to each argument, and
minimizes the total number of operations (multiplications, divisions
and calls to cos).
 *)

let ccr =
  function a ->
	   (function b ->
		     (function c ->
			       (function s -> s/.(2.*.(cos(a/.2.)*.2.*.cos(b/.2.)*.2.*.cos(c/.2.))))))
;;

let f1 = function x -> (function y -> x - y);;

  f1 1 2;;

  let f2 x = f1 x;;

  let f3 = f1 1;

f3 2;;
