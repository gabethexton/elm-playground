module Hello exposing (..)

import Html exposing (..)


main =
    text "Hello"

 -- Anonymous functions
 \x -> x + 1

 \x y -> x + y
-- Between the backslash and the arrow, you list the arguments of the function, and on the right of the arrow, you say what to do with those arguments.

-- Named functions
-- A named function in Elm looks like this:
add1 : Int -> Int
add1 x =
  x + 1
