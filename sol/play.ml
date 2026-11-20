open! Src.Referee
open! Src.Human_player
open! Ai_player
open! Tnf

module R1 =
  MakeReferee (TheGame) (MakeHumanPlayer (TheGame)) (MakeHumanPlayer (TheGame));;

(* TODO: modify the string passed in to play different boards*)
R1.play_game "TT.....FF"
