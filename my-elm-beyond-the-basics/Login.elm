module Login exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Html.App as App


-- MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL MODEL


type alias Model =
    { username : String
    , password : String
    }


initModel : Model
initModel =
    { username = ""
    , password = ""
    }



-- UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE UPDATE


type Msg
    = UsernameInput String
    | PasswordInput String


update : Msg -> Model -> Model
update msg model =
    case msg of
        UsernameInput username ->
            { model | username = username }

        PasswordInput password ->
            { model | password = password }



-- VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW VIEW


view : Model -> Html Msg
view model =
    div []
        [ h3 [] [ text "Welcome!" ]
        , br [] []
        , h3 [] [ text "Let's Login!" ]
        , Html.form []
            [ input
                [ type' "text"
                , onInput UsernameInput
                , placeholder "Username"
                ]
                []
            , input
                [ type' "text"
                , onInput UsernameInput
                , placeholder "Username"
                ]
                []
            , input
                [ type' "submit" ]
                [ text "Login" ]
            ]
        , hr [] []
        , h4 [] [ text "Login Model: " ]
        , p [] [ text <| toString model ]
        ]



-- MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN MAIN
--
-- initial MAIN removed as login became part of a larger app...
--
-- main : Program Never
-- main =
--     App.beginnerProgram
--         { model = initModel
--         , view = view
--         , update = update
--         }
