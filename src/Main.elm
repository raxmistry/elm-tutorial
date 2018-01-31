module Main exposing (..)

import Html exposing (Html, div, text, program)
import Msgs exposing (Msg)
import Update exposing (update)
import View exposing (view)
import Models exposing (Model, initialModel)
import Commands exposing (fetchPlayers)


init : ( Model, Cmd Msg )
init =
    ( initialModel, fetchPlayers )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
