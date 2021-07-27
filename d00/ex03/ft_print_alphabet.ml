let rec print_next_letter l =
    print_char l;
    if l != 'z' 
    then print_next_letter (char_of_int ((int_of_char l) + 1))
    else print_char '\n'

let ft_print_alphabet =
    print_next_letter 'a'

let main () =
    ft_print_alphabet

let () = main ()
