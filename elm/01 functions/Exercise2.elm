module Main exposing (..)

import Html
import String


makeUpper maxLength name =
    if String.length name > maxLength then
        String.toUpper name
    else
        name


main =
    let
        name =
            "James Moore"

        length =
            String.length name
    in
        (makeUpper 10 name)
            ++ " - name length: "
            ++ (toString length)
            |> Html.text
