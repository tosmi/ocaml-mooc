for i = 0 downto -5 do
  print_int i;
  print_newline()
done

let a = Array.init 10 (fun i -> i)

let rotate_last a = match a with
  | [||] | [|_|] -> ()
  | _ ->
      let n = Array.length a in
      let v = a.(n-1) in
      for i = (n-1) downto 1 do
        a.(i) <- a.(i-1)
      done;
      a.(0) <- v;;

let l = Array.length a;;

  a;;

a.(l-1);;
rotate_last a;;
