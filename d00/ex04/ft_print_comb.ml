let rec ft_next_unit h t u =
    if (u > t) && (t > h) then
    begin
        print_int h;
        print_int t;
        print_int u;

        if (h == 7) && (t == 8) && (u == 9)
        then print_string "\n"
        else print_string ", "
    end;

    if u < 9 then ft_next_unit h t (u + 1)

let rec ft_next_ten h t =
    ft_next_unit h t 0;
    if t < 8 then ft_next_ten h (t + 1)

let rec ft_next_hundred h =
    ft_next_ten h 0;
    if h < 7 then ft_next_hundred (h + 1)


let ft_print_comb =
    ft_next_hundred 0

let main () =
    ft_print_comb

let () = main ()
