module App exposing (main)

import App.DataSource as DataSource exposing (DataSource, Token)
import App.Page exposing (Intent(..))
import Browser
import Html
import Json.Decode as Decode exposing (Decoder, Value)


type alias Model =
    { sources : List DataSource
    }


type Msg
    = Intent Intent
    | SourceConnected ( Token, DataSource )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case Debug.log "update" msg of
        Intent intent ->
            ( model, Cmd.none )

        SourceConnected ( token, src ) ->
            ( model, Cmd.none )



-- Setup


type alias Flags =
    { someSetting : Bool
    }


flagsDecoder : Decoder Flags
flagsDecoder =
    Decode.map Flags
        (Decode.field "someSetting" Decode.bool)


init : Value -> () -> () -> ( Model, Cmd Msg )
init json url navKey =
    let
        model =
            { sources = []
            }

        cmds =
            DataSource.connect SourceConnected
    in
    case Decode.decodeValue flagsDecoder json of
        Ok flags ->
            ( model, cmds )

        Err reason ->
            ( model, cmds )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program Value Model Msg
main =
    let
        view model =
            let
                { body } =
                    App.Page.view model
            in
            Html.div [] (List.map (Html.map Intent) body)
    in
    Browser.element
        { init = \flags -> init flags () ()
        , subscriptions = subscriptions
        , update = update
        , view = view
        }
