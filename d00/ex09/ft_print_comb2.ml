let ft_print_comb2 =
    let rec loop f s =
        if (f == 99) && (s == 100)
        then print_char '\n'
        else
            begin
            if f < 10 then print_char '0';
            print_int f;
            print_char ' ';
            if s < 10 then print_char '0';
            print_int s;
            if not ((f == 98) && (s == 99)) then
            begin
                print_char ',';
                print_char ' '
            end;

            if (s == 99)
            then loop (f + 1) (f + 2)
            else loop f (s + 1)
            end

    in

    loop 0 1

let main () =
    ft_print_comb2

let () = main ()
