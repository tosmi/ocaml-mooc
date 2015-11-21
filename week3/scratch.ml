type tagged =
  | Test1 of (int * int)
  | Test2 of (int * string);;

let x : tagged = Test1 (1,2);;
let y : tagged = Test2 (1,"toni");;

let z : tagged = Test3 (1,1.0);;

x;;
y;;
