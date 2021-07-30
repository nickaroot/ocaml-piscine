let converges f x n =
    if n < 0 then false
    else let rec loop acc m =
        if m = 0 then acc = (f acc)
        else loop (f acc) (m - 1)
    in
    loop x n

let main () =
    print_endline "converges (( * ) 2) 2 5:";
    print_endline (string_of_bool (converges (( * ) 2) 2 5));
    print_endline "\nconverges (fun x -> x / 2) 2 3:";
    print_endline (string_of_bool (converges (fun x -> x / 2) 2 3));
    print_endline "\nconverges (fun x -> x / 2) 2 2:";
    print_endline (string_of_bool (converges (fun x -> x / 2) 2 2))

let () = main ()
