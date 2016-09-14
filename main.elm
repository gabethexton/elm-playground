module Main exposing (..)

import Html


add a b =
    a + b


result =
    -- add (add 1 2) 3
    -- add 1 2 |> add 3
    add 10 2 |> \a -> a % 2 == 0


main =
    Html.text (toString result)


counter =
    0


increment cnt amt =
    let
        localCount =
            cnt
    in
        localCount + amt
