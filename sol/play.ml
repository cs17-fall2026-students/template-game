module R1 =
  Src.Referee.Make (Tnf.TheGame) (Src.Human_player.Make (Tnf.TheGame))
    (Src.Human_player.Make (Tnf.TheGame))
;;

(* TODO: modify the string passed in to play different boards*)
R1.play_game "TT.....FF"
