open! Src.Game_sig
open! Src.Cs17_setup_game

(* TODO: complete the AI Player module *)
module Make (MyGame : Game) = struct
  module PlayerGame = MyGame

  let next_move : PlayerGame.state -> PlayerGame.move =
   function s -> failwith "Not implemented"

  (* put your team name here! *)
  let player_name = ""
end

module AI = Make (Tnf.Tnf)
open! Tnf.Tnf

(* Your test cases go here! *)
