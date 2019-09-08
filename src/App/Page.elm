module App.Page exposing (Intent(..), view)

import App.Layout as Layout
import Browser
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (class)


type Intent
    = None


view _ =
    { title = "Spectacle"
    , body =
        [ Layout.sidebarWith [ class "h-screen" ]
            (Layout.stackWith [ class "--no-margin" ]
                [ div [] [ text "OMG1" ]
                , div [] [ text "OMG2" ]
                ]
            )
            (div []
                [ text "Content"
                ]
            )
        ]
    }


kitchenSink : List (Html msg)
kitchenSink =
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
