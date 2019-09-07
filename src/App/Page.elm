module App.Page exposing (Intent(..), view)

import App.Layout as Layout
import Browser
import Html exposing (button, div, text)
import Html.Attributes exposing (class)


type Intent
    = None


view : {} -> Browser.Document Intent
view _ =
    { title = "Spectacle"
    , body =
        [ Layout.cover
            [ Layout.stack
                [ Layout.center
                    [ Layout.box [ text "Hello, World!" ]
                    ]
                , div []
                    [ button [ class "btn btn-primary" ]
                        [ text "Click Me!"
                        ]
                    ]
                , Layout.box [ text "Some box" ]
                , Layout.box [ text "Another box" ]
                , Layout.frame
                    [ Layout.image "http://canena.de/img/ich3.jpg"
                    ]
                , Layout.sidebar
                    (Layout.box [ text "Sidebar" ])
                    (Layout.box [ text "Content" ])
                ]
            ]
        , Layout.stack
            [ Layout.box [ text "Some content" ]
            ]
        ]
    }


