let exchange k =
  if k < 10 || k > 99 then
    k
  else
    let string = string_of_int k in
    let a = String.get string 0 in
    let b = String.get string 1 in
    int_of_string ((String.make 1 b) ^ (String.make 1 a));;


  let is_valid_answer (grand_father_age, grand_son_age) =
    let father_age = grand_son_age * 4 in
    let son_age = (exchange grand_father_age)*3 in
    if father_age = grand_father_age && exchange grand_son_age = son_age then
      true
    else
      false;;


    is_valid_answer(72,18);;
