-- Module & Imports


module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Html.App as App
import Login
import Leaderboard


-- MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL


type alias Model =
    { page : Page
    , leaderboard : Leaderboard.Model
    , login : Login.Model
    }


initModel : Model
initModel =
    { page = LeaderboardPage
    , leaderboard = Leaderboard.initModel
    , login = Login.initModel
    }


type Page
    = LeaderboardPage
    | LoginPage



-- UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE


type Msg
    = ChangePage Page
    | LeaderboardMsg Leaderboard.Msg
    | LoginMsg Login.Msg


update : Msg -> Model -> Model
update msg model =
    case msg of
        ChangePage page ->
            { model
                | page = page
            }

        LeaderboardMsg lbMsg ->
            { model
                | leaderboard =
                    Leaderboard.update lbMsg model.leaderboard
            }

        LoginMsg loginMsg ->
            { model
                | login = Login.update loginMsg model.login
            }



-- VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW


view : Model -> Html Msg
view model =
    let
        page =
            case model.page of
                LeaderboardPage ->
                    App.map LeaderboardMsg
                        (Leaderboard.view model.leaderboard)

                LoginPage ->
                    App.map LoginMsg
                        (Login.view model.login)
    in
        div []
            [ div []
                [ a
                    [ href "#"
                    , onClick (ChangePage LeaderboardPage)
                    ]
                    []
                , span [] [ text "|" ]
                , a
                    [ href "#"
                    , onClick (ChangePage LoginPage)
                    ]
                    []
                ]
            , hr [] []
            , page
            , hr [] []
            , h4 [] [ text "App Model: " ]
            , p [] [ text <| toString model ]
            ]



-- MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN


main : Program Never
main =
    App.beginnerProgram
        { model = initModel
        , view = view
        , update = update
        }
