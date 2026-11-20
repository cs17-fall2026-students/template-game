open! Src.Game_sig
open! Src.Cs17_setup_game

(* TODO: complete the TNF module *)
module Tnf = struct
  (* player 1 is P1, player 2 is P2 *)
  type which_player = P1 | P2 [@@deriving sexp_of]

  (* either a player has won, it's a draw, or it's ongoing *)
  type status = Win of which_player | Draw | Ongoing of which_player
  [@@deriving sexp_of]

  let initial_state : string -> state =
   function s ->
    let value_list = parse_input s in
    (* Your initial state, using value_list, goes here *)
    failwith "Not implemented"
end

module TheGame : Game = Tnf
open Tnf

(* Your test cases go here! *)
