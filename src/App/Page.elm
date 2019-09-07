module App.Page exposing (Intent(..), view)

import Browser
import Html exposing (Html)


type Intent
    = None


view : {} -> Browser.Document Intent
view _ =
  { title = "Spectacle"
  , body =
      [ Html.text "Hello, World!"
      ]
  }

