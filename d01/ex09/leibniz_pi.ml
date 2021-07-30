let leibniz_pi d =
    if d < 0. then (-1)
    else let rec loop acc i =
        let abs x = if x < 0. then -.x else x
        in
        if abs (acc -. (4. *. (atan 1.))) <= d then i
        else loop (acc +. (4. *. ((-1.) ** (float_of_int i)) /. (2. *. (float_of_int i) +. 1.))) (i + 1)
    in
    loop 0. 0

let main () =
    print_endline "\nleibniz_pi 1.:";
    print_endline (string_of_int (leibniz_pi 1.));
    print_endline "\nleibniz_pi (-.1.):";
    print_endline (string_of_int (leibniz_pi (-.1.)));
    print_endline "\nleibniz_pi 0.1:";
    print_endline (string_of_int (leibniz_pi 0.1));
    print_endline "\nleibniz_pi 0.01:";
    print_endline (string_of_int (leibniz_pi 0.01))

let () = main ()
