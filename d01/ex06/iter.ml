let iter f x n =
    if n < 0 then (-1)
    else if n = 0 then x
    else let rec loop acc m =
        if m = 1 then f acc
        else loop (f acc) (m - 1)

    in
    loop x n

let main () =
    print_endline "iter (fun x -> x * x) 2 -1:";
    print_endline (string_of_int (iter (fun x -> x * x) 2 (-1)));
    print_endline "\niter (fun x -> x * x) 2 0:";
    print_endline (string_of_int (iter (fun x -> x * x) 2 0));
    print_endline "\niter (fun x -> x * x) 2 4:";
    print_endline (string_of_int (iter (fun x -> x * x) 2 4));
    print_endline "\niter (fun x -> x * 2) 2 4:";
    print_endline (string_of_int (iter (fun x -> x * 2) 2 4))

let () = main ()
