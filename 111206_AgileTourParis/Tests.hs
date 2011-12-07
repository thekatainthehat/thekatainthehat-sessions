module Tests
where
import Test.HUnit
import Pondeuse

main = runTestTT $ TestList [
    ponds "Ce que vous čoulez" "Ce" [] ~?= "Ce",
    ponds "Deviens ce que tu es" "Deviens" [] ~?= "Deviens",
    ponds "Entre dans l'histoire" "Entre" [0] ~?= "Entre dans",
    ponds "Je veux une belle maison" "une" [0] ~?= "une belle",
    ponds "Le château de ma mère" "de" [0,0] ~?= "de ma mère",
    ponds "Je veux une belle maison et une belle voiture" "belle" [1] ~?= "belle voiture",
    ponds "Oh oh oh oh oh" "oh" [5] ~?= "oh oh",



    où_sont rennes ~?= auCentrePénitentiaire,
    où_sont auCentrePénitentiaire ~?= àCôtéDeLaGare
  ]
