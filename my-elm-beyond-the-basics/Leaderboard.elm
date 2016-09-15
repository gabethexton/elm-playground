-- Module & Imports


module Leaderboard exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)


-- MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL


type alias Model =
    { runners : List Runner
    , query : String
    }


type alias Runner =
    { id : Int
    , name : String
    , location : String
    }


initModel : Model
initModel =
    { runners = []
    , query = ""
    }



-- UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE


type Msg
    = QueryInput String


update : Msg -> Model -> Model
update msg model =
    case msg of
        QueryInput query ->
            { model | query = query }



-- _ ->
--     Model
-- VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW


view : Model -> Html Msg
view model =
    div []
        [ h3 [] [ text "Leaderboard - Know who's ahead!" ]
        , input
            [ type' "text"
            , onInput QueryInput
            , value model.query
            , placeholder "Search for your favorite Runner!"
            ]
            []
        , hr [] []
        , hr [] [ text "Leaderboard Model:" ]
        , p [] [ text <| toString model ]
        ]
