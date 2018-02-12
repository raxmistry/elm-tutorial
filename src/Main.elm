module Main exposing (..)

import Html exposing (Html, div, text, program)
import Msgs exposing (Msg)
import Update exposing (update)
import View exposing (view)
import Models exposing (Model, initialModel)
import Commands exposing (fetchPlayers)
import Navigation exposing (Location)
import Routing exposing (parseLocation)


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            Routing.parseLocation location
    in
        ( initialModel currentRoute, fetchPlayers )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN


main : Program Never Model Msg
main =
    Navigation.program Msgs.OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
