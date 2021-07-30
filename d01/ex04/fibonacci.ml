let fibonacci n =
    if n < 0 then (-1)
    else if n = 0 then 0
    else if n = 1 then 1
    else let rec f m a b =
        if m = n then (a + b)
        else f (m + 1) (a + b) a
    in
    f 2 1 0

let main () =
    print_endline "fibonacci (-42):";
    print_endline (string_of_int (fibonacci (-42)));
    print_endline "\nfibonacci 1:";
    print_endline (string_of_int (fibonacci 1));
    print_endline "\nfibonacci 3:";
    print_endline (string_of_int (fibonacci 3));
    print_endline "\nfibonacci 6:";
    print_endline (string_of_int (fibonacci 6))

let () = main ()
