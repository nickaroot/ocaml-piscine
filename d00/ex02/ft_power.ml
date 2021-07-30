let rec ft_power n e =
    if e = 0 then
        1
    else
        n * ft_power n (e - 1)

let test n e =
    print_string "ft_power ";
    print_int n;
    print_char ' ';
    print_int e;
    print_char '\n';
    print_int (ft_power n e);
    print_char '\n';
    print_char '\n'

let main () =
    test 2 4;
    test 3 0;
    test 0 5;
    test 2 61;
    test 2 62

let () = main ()
