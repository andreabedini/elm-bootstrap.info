module Page.Home exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Globals
import Route


view : (String -> msg) -> List (Html msg)
view pageMsg =
    [ main_
        [ class "bd-masthead", id "content" ]
        [ div
            [ style [ ( "margin", "0 auto 2rem" ) ] ]
            [ img
                [ src "assets/images/elm-bootstrap.svg"
                , alt "elm-bootstrap"
                , style
                    [ ( "border", "1px solid white" )
                    , ( "width", "120px" )
                    , ( "border-radius", "15%" )
                    ]
                ]
                []
            ]
        , p [ class "lead" ]
            [ text "Build responsive "
            , a [ style [("color", "#ffe484")]
                , href "http://elm-lang.org", target "_blank"
                ]
                [ text "Elm" ]
            , text " applications using "
            , a [ href Globals.bootstrapUrl, target "_blank"
                , style [("color", "#ffe484")]
                ]
                [ text "Bootstrap 4" ]
            , text "."
            ]
        , p [ class "version" ]
            [ text "v4.0.0"]
        ]
    , div
        [ class "bd-featurette" ]
        [ div
            [ class "container" ]
            [ h2
                [ class "bd-featurette-title"]
                [ text "Responsive and reliable" ]
            , p
                [class "lead"]
                [ text """Elm Bootstrap lets you easily create responsive web applications with confidence"""]
            , div
                [ class "row" ]
                [ div
                    [class "col-sm-6 mb-3"]
                    [ h4 [] [ text "Getting started" ]
                    , p []
                        [ text """The easiest way to get started is using the Bootstrap.CDN module, which allows you to inline the latest Bootstrap CSS.
                               This allows you to start using Elm Bootstrap with the elm-reactor from the get go.
                               """
                        , a (Route.clickTo Route.GettingStarted pageMsg )
                            [ text "Read more..."]
                        ]
                    ]
                , div
                    [class "col-sm-6 mb-3"]
                    [ h4 [] [ text "Reasonably type safe" ]
                    , p []
                        [ text """The Elm Bootstrap library provides a fairly type safe API so that you can spend the majority of your time
                               designing your application not worrying about doing stuff that doesn't make sense or won't work.
                               You'll get sensible defaults and the Elm compiler will have your back most of the time !
                               """
                        ]
                    ]
                ]

            ]
        ]
    ]
