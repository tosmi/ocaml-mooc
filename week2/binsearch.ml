let wordlist = [|"a"; "b"; "c"|]

let find dict word : int =
  let rec binsearch dict word min max =
    if min > max then
      -1
    else
      let mid = (min+max)/2 in
      let comp = String.compare word dict.(mid) in
      if comp = 0 then
        mid
      else if comp < 0 then
        binsearch dict word 0 (mid-1)
      else
        binsearch dict word (mid+1) max
  in
  binsearch dict word 0 ((Array.length dict) - 1);;

find wordlist "c";;

Array.length wordlist;;

String.compare "c" wordlist.(2);;
