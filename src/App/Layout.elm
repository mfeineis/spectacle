module App.Layout
    exposing (box, center, cover, frame, image, sidebar, stack)

import Html exposing (Attribute, Html, div)
import Html.Attributes as Attr exposing (class)



box : List (Html msg) -> Html msg
box =
    Html.div [ class "ly:box" ]


center : List (Html msg) -> Html msg
center =
    Html.div [ class "ly:center" ]


cover : List (Html msg) -> Html msg
cover =
    Html.div [ class "ly:cover" ]


frame : List (Html msg) -> Html msg
frame =
    Html.div [ class "ly:frame" ]


image : String -> Html msg
image src =
    Html.img [ class "ly:image", Attr.src src ] []


sidebar : Html msg -> Html msg -> Html msg
sidebar left right =
    Html.div [ class "ly:sidebar" ]
      [ div [] 
          [ left
          , right
          ]
      ]


stack : List (Html msg) -> Html msg
stack =
    Html.div [ class "ly:stack" ]

