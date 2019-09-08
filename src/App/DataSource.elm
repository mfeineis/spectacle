module App.DataSource
    exposing
        ( DataSource
        , DataSourceId
        , DimensionId
        , Token
        , connect
        , dimensions
        )


import Dict exposing (Dict)
import Task


type DataSourceId = DataSourceId String


type DimensionId = DimensionId String


type DataSource
    = DataSource
        { id : DataSourceId
        , dimensions : List { id : DimensionId, name : String }
        , name : String
        }


type alias DataPoint =
    { values : Dict DimensionId Float
    }


type Token 
    = Token


connect : (( Token, DataSource ) -> msg) -> Cmd msg
connect toMsg =
    let
        token = Token
        data =
            ( token
            , DataSource
                { id = DataSourceId "some-id"
                , dimensions =
                    [ { id = DimensionId "dim1", name = "Dimension1" }
                    , { id = DimensionId "dim2", name = "Dimension2" }
                    , { id = DimensionId "dim3", name = "Dimension3" }
                    ]
                , name = "Some DataSource"
                }
            )
    in
    Task.perform identity ((toMsg >> Task.succeed) data)


dimensions : Token -> DataSource -> List { id : DimensionId, name : String }
dimensions token (DataSource src) = 
    src.dimensions
        |> List.map (\{ id, name } -> { id = id, name = name })


