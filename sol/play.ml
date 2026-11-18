module R1 =
  Src.Referee.Make (Tnf.Game) (Src.Human_player.Make (Tnf.Game))
    (Src.Human_player.Make (Tnf.Game))
;;

(* TODO: modify the string passed in to play different boards*)
R1.play_game "TT.......FF"
