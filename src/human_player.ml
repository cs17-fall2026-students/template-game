open Game_sig

module Make (MyGame : Game) = struct
  module PlayerGame = MyGame

  let get_input_line () : string =
    print_string "What move do you want to make? ";
    flush stdout;
    input_line stdin

  let rec next_move s =
    match get_input_line () with 
     | "exit" -> print_endline "Exiting Game REPL"; exit 0
     | input ->
       (try PlayerGame.move_of_string (input, s) with
        | Failure msg -> print_endline msg; next_move s)

  let player_name = "octopoctus"
end
