module Pondeuse
where

type Discours = String
type Prémisse = String
type Cadeau = Int
type ListeAuPèreNoël = [Cadeau]

ponds :: Discours -> Prémisse -> ListeAuPèreNoël -> Discours
ponds d p cx = tricote premiersMotsDuDiscours
  where premiersMotsDuDiscours = 
          p:(motsDuDiscoursAprès p cx)
        motsDuDiscoursAprès m [] = []
        motsDuDiscoursAprès m (c:cx) =
          (motAprès m c):motsDuDiscoursAprès (motAprès m c) cx
        motAprès m c = (suivantsDe m) !!% c
        liste !!% n =  liste !! (n `mod` length liste) 
        tousLesMotsDuDiscours = words d
        suivants = zip tousLesMotsDuDiscours (tail (cycle tousLesMotsDuDiscours))
        suivantsDe m = [s|(p,s)<-suivants, p==m]
        tricote mots = unwords mots

rennes = "rudolf, raphaël, zéphyr, anastasia,  robert, flash"
auCentrePénitentiaire = "en prison"
àCôtéDeLaGare = "près de la prison"
où_sont x | x == rennes = auCentrePénitentiaire
          | otherwise = àCôtéDeLaGare



