module SimpleDecoding exposing (..)

import Html exposing (..)
import Json.Decode exposing (..)


json : String
json =
    """
        {
        "type": "success",
        "value":
            {
            "id": 134,
            "joke": "Using his trademark roundhouse kick, Chuck Norris once made a fieldgoal in RJ Stadium in Tampa Bay from the 50 yard line of Qualcomm stadium in San Diego.",
            "categories": []
            }
        }
    """


decoder : Decoder String
decoder =
    at [ "value", "joke" ] string


jokeResult : Result String String
jokeResult =
    decodeString decoder json


main : Html msg
main =
    case jokeResult of
        Ok joke ->
            text joke

        Err err ->
            text err
