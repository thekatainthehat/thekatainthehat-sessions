module Conferenceur where

type Texte = String
type Mot = String

génèreDepuis :: Texte -> Mot -> [Int] -> Texte
génèreDepuis t m cs = unwords
                $ m : génèreMots m cs
  where motsDuTexte = words t
        paires = zip motsDuTexte ( tail motsDuTexte)
        génèreMots m [] = []
        génèreMots m (c:cs) =
          motAprès m c : génèreMots (motAprès m c) cs
        motsAprès m = [suiv|(prec,suiv)<-paires, prec == m]
        motAprès m c = motsAprès m !!% c
        l !!% n = l !! (n `mod` length l)

nop = id

