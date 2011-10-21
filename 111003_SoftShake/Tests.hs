module Tests where
import Test.HUnit
import Conferenceur

main = runTestTT $ TestList [
   génère "Une chaîne avec que des mots différents"
          (repeat 0)
          "Une" 3 ~?= "Une chaîne avec"
  ,génère "Une chaîne différente"
          (repeat 0)
          "Une" 2 ~?= "Une chaîne"
  ,génère "Une phrase qui fait du sens"
          (repeat 0)
          "fait" 3 ~?= "fait du sens"
  ,génère "Une phrase qui commence et qui finit."
          (repeat 1)
          "qui" 2 ~?= "qui finit."
  ,génère "Un seul suivant tu as."
          (repeat 5)
          "Un" 2 ~?= "Un seul"
  ]
