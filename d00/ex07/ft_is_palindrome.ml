let ft_is_palindrome s =
    let l = String.length s in
    let m = l / 2 in
    let n = m + ((l mod 2) - 1) in

    let rec loop i =
        if m + i < l then
            if not (s.[m + i] == s.[n - i])
            then false
            else loop (i + 1)
        else true
    in
        loop 0

let test s =
    print_string "ft_is_palindrome ";
    print_endline s;
    if (ft_is_palindrome s)
    then print_endline "true"
    else print_endline "false";
    print_char '\n'

let main () =
    test "radar";
    test "raddar";
    test "madam";
    test "car";
    test ""

let () = main ()
