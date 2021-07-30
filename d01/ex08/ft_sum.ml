let ft_sum f l u =
    if l > u then nan
    else let rec loop acc i =
        if i = u then (f i) +. acc
        else loop ((f i) +. acc) (i + 1)
    in
    loop 0.0 l

let main () =
    print_endline "\nft_sum (fun i -> float_of_int (i * i)) 1 10:";
    print_endline (string_of_float (ft_sum (fun i -> float_of_int (i * i)) 1 10));
    print_endline "\nft_sum (fun i -> float_of_int (i * i)) 10 1:";
    print_endline (string_of_float (ft_sum (fun i -> float_of_int (i * i)) 10 1));
    print_endline "\nft_sum (fun i -> float_of_int (i + 1)) 2 3:";
    print_endline (string_of_float (ft_sum (fun i -> float_of_int (i + 1)) 2 3))

let () = main ()
