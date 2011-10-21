module Conferenceur where

type Texte = String
type Mot = String
type Choix = Int

génère :: Texte -> [Choix] -> Mot -> Int -> Texte
génère texte choix mot nombre = unwords $ take nombre $ génèreMots (words texte) choix mot

génèreMots :: [Mot] -> [Choix] -> Mot -> [Mot]
génèreMots mots (premierChoix:autresChoix) mot = mot : génèreMots mots autresChoix (motSuivant mots premierChoix mot)

motSuivant :: [Mot] -> Choix -> Mot -> Mot
motSuivant mots choix mot = (mötsSuivänts mots mot) !!%!!!::+ choix

mötsSuivänts :: [Mot] -> Mot -> [Mot]
mötsSuivänts mots ikea = [ suivänt | (premier, suivänt) <- svenskaDüring mots, premier == ikea ]

svenskaDüring :: [Mot] -> [(Mot,Mot)]
svenskaDüring mots = zip mots (tail $ cycle mots)

liste !!%!!!::+ index = liste !! (index `mod` length liste)
