open Game_sig
open Player_sig

module Make
    (MyGame : Game)
    (Player1 : Player with module PlayerGame = MyGame)
    (Player2 : Player with module PlayerGame = MyGame) =
struct
  let play_game : string -> unit = function str ->
    let rec game_loop: MyGame.state -> unit = function s ->
      print_endline (MyGame.string_of_state s);
      match MyGame.game_status s with
      | MyGame.Win player ->
          print_endline (MyGame.string_of_player player ^ " wins!")
      | MyGame.Draw -> print_endline "Draw..."
      | MyGame.Ongoing player ->
          print_endline (MyGame.string_of_player player ^ "'s turn.");
          let the_move =
            match player with
            | MyGame.P1 -> Player1.next_move s
            | MyGame.P2 -> Player2.next_move s
          in
          print_endline
            (MyGame.string_of_player player
            ^ " makes the move "
            ^ MyGame.string_of_move the_move);
          game_loop (MyGame.next_state (s, the_move))
    in
    try game_loop (MyGame.initial_state str) 
    with Failure msg -> print_endline msg 
end
