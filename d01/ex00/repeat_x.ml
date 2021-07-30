let repeat_x n =
    if n < 0 then "Error"
    else
        begin
            let rec loop ?acc:(acc="") m =
                if m = 0 then acc
                else loop ~acc:("x" ^ acc) (m - 1)
            in
            loop n
        end

let main () =
    print_endline "repeat_x 3:";
    print_endline (repeat_x 3);
    print_endline "\nrepeat_x 1:";
    print_endline (repeat_x 1);
    print_endline "\nrepeat_x 0:";
    print_endline (repeat_x 0);
    print_endline "\nrepeat_x -1:";
    print_endline (repeat_x (-1))
    (* print_string "\nrepeat_x ";
    print_int ((1 lsl 62) - 1);
    print_endline ":";
    print_endline (repeat_x ((1 lsl 62) - 1)) *)

let () = main ()
