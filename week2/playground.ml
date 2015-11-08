type type1 = {
    x: int;
    y: int;
    s: string;
  };;

let var1 = {
    x=1;
    y=2;
    s="test var1";
  };;

let test { x=a; s=b} = b;;

test var1;;
