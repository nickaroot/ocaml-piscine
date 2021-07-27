let rec ft_countdown i =
    if i > 0 then
        begin
        print_int i;
        print_char '\n';
        ft_countdown (i - 1)
        end
    else
        begin
        print_int 0;
        print_char '\n'
        end

let test i =
    print_string "ft_countdown ";
    print_int i;
    print_char '\n';
    ft_countdown i;
    print_char '\n'

let main () =
    test 3;
    test 0;
    test (-1)

let () = main ()
