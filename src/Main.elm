module Main exposing (..)

import Html exposing (Html, text, div, h1, img, input)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)


---- MODEL ----


type alias Model =
    { captcha : String }


init : ( Model, Cmd Msg )
init =
    ( { captcha = "" }, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp
    | Captcha String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []

        Captcha str ->
            { model | captcha = str } ! []


captchaValidator : String -> Bool
captchaValidator captcha =
    True


captchaSumCalculator : Int -> Int
captchaSumCalculator captchaNumber =
    0


numberToListOfDigits : String -> List Int
numberToListOfDigits number =
    []



-- case String.length number of
--     0 -> []
--     _ ->
--         let
--         in
---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ img [ src "/logo.svg" ] []
        , h1 [] [ text "Enter a captcha to prove that you're a robot!" ]
        , input [ type_ "text", placeholder "label", onInput Captcha ] []
        , h1 [] [ text model.captcha ]
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
