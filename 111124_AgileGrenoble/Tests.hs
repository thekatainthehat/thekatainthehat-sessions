module Tests where
import Test.HUnit
import Conferenceur

main = (>> return ()) $ runTestTT $ TestList [
    génèreDepuis "où en est l'agilité ?"
                 "où" [] ~?= "où",
    génèreDepuis "où en est l'agilité ?"
                 "où" [0] ~?= "où en",
    nop "quelque chose" ~?= "quelque chose",
    génèreDepuis "où en est l'agilité"
                 "en" [0] ~?= "en est",
    génèreDepuis "où en est"
                 "où" [0,0] ~?= "où en est",
    génèreDepuis "où en est il, où en est elle"
                 "est" [1] ~?= "est elle",
    génèreDepuis "où en est il, où en est elle"
                 "est" [2] ~?= "est il,"
  ]
