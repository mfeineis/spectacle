module App exposing (main)

import App.Page exposing (Intent(..))
import Browser
import Html
import Json.Decode as Decode exposing (Decoder, Value)


type alias Model =
    {}


type Msg
    = Intent Intent


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
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
    case Decode.decodeValue flagsDecoder json of
        Ok flags ->
            ( {}, Cmd.none )

        Err reason ->
            ( {}, Cmd.none )


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
