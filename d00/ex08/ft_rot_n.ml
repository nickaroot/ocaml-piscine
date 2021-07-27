let ft_rot_n n str =
    let rot_char_n c =
        let a = int_of_char 'a' in
        let ca = int_of_char 'A' in

        if ((c >= 'A') && (c <= 'Z'))
        then char_of_int (ca + (((int_of_char c) + n - ca) mod 26))
        else if ((c >= 'a') && (c <= 'z'))
        then char_of_int (a + (((int_of_char c) + n - a) mod 26))
        else c
    in
    String.map rot_char_n str

let test n str =
    print_string "ft_rot_n ";
    print_int n;
    print_char ' ';
    print_endline str;
    print_endline (ft_rot_n n str)

let main () =
    test 1 "abcdefghijklmnopqrstuvwxyz";
    test 13 "abcdefghijklmnopqrstuvwxyz";
    test 42 "0123456789";
    test 2 "OI2EAS67B9";
    test 0 "Damned !";
    test 42 "";
    test 1 "NBzlk qnbjr !"

let () = main ()
