let ft_print_rev s =
    let rec loop i =
        if i >= 0 then
        begin
            print_char s.[i];
            loop (i - 1)
        end
        else print_char '\n'
    in
        loop ((String.length s) - 1)

let test s =
    print_string "ft_print_rev ";
    print_endline s;
    ft_print_rev s

let main () =
    test "Hello world !";
    test ""

let () = main ()
