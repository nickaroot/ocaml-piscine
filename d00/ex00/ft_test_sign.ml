let ft_test_sign i =
    (* if 1 + (i asr 62) - (-i asr 62) == 0 *)
    if i < 0
    then "negative"
    else "positive"

let main () =
    print_endline (ft_test_sign 42);
    print_endline (ft_test_sign 0);
    print_endline (ft_test_sign (-42))

let () = main ()
