open! Src.Game_sig
open! Src.Cs17_setup_game

(* TODO: set search_depth to how many moves ahead your AI should look.
  * A larger depth makes a smarter AI, but it will take longer to move. *)
let search_depth = 5

(* TODO: complete the AI Player module *)
module MakeAIPlayer (MyGame : Game) = struct
  module PlayerGame = MyGame

  let next_move : PlayerGame.state -> PlayerGame.move =
   function s -> failwith "Not implemented"

  (* put your team name here! *)
  let player_name = ""
end

module AI = MakeAIPlayer (Tnf.Tnf)
open! Tnf.Tnf

(* Your test cases go here! *)
