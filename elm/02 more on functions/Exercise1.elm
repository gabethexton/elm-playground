module Main exposing (..)

import Html


(~+) a b =
    a + b + 0.1


add a b =
    a + b


result =
    -- 1 ~+ 3
    -- 1 `add` 2
    (~+) 1 4


main =
    Html.text (toString result)
