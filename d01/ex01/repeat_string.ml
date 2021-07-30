let repeat_string ?(str="x") n =
    if n < 0 then "Error"
    else
        begin
            let rec loop ?acc:(acc="") m =
                if m = 0 then acc
                else loop ~acc:(str ^ acc) (m - 1)
            in
            loop n
        end

let main () =
    print_endline "\nrepeat_string (-1):";
    print_endline (repeat_string (-1));
    print_endline "\nrepeat_string 0:";
    print_endline (repeat_string 0);
    print_endline "\nrepeat_string ~str:\"Toto\" 1:";
    print_endline (repeat_string ~str:"Toto" 1);
    print_endline "\nrepeat_string 2:";
    print_endline (repeat_string 2);
    print_endline "\nrepeat_string ~str:\"a\" 5:";
    print_endline (repeat_string ~str:"a" 5);
    print_endline "\nrepeat_string ~str:\"what\" 3:";
    print_endline (repeat_string ~str:"what" 3)

let () = main ()
