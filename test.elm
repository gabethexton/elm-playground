module Main exposing (..)

import Html
import Date

type Action = AddPlayer String | Score int int
action = AddPlayer "James"
msg = AddPlayer "James"
case msg of
    AddPlayer name -> "Add player: " ++ name
    Score id points -> "Player id: " ++ (toString id) ++ "Scored: " ++ (toString points)

type Maybe a
    = Just a
    | Nothing

first = List.head []

someDate = Date.fromString "01/03/1956"
