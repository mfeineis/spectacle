module App exposing (main)

import App.Page exposing (Intent(..))
import Browser
import Html


type alias Flags =
    {}


type alias Model =
    {}


type Msg
    = Intent Intent


init : Flags -> () -> () -> ( Model, Cmd Msg )
init flags url navKey =
    ( {}, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


main : Program Flags Model Msg
main =
    Browser.element
      { init = \flags -> init flags () ()
      , subscriptions = subscriptions
      , update = update
      , view =
          \model ->
              let
                  { body } = App.Page.view model
              in
              Html.div [] (List.map (Html.map Intent) body)
      }
