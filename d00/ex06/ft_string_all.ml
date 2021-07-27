let ft_string_all p s =
    let rec loop i =
        if i < String.length s then
            if not (p s.[i])
            then false
            else loop (i + 1)
        else if i > 0 then true
        else false
    in
        loop 0

let is_digit c = c >= '0' && c <= '9'

let test s =
    print_string "ft_string_all is_digit ";
    print_endline s;
    if (ft_string_all is_digit s)
    then print_endline "true"
    else print_endline "false"

let main () =
    test "0123456789";
    test "O12EAS67B9";
    test "0";
    test ""

let () = main ()
