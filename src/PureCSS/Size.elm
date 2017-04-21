module Size exposing (..)

type Units =
    Em
    | Ex
    | Ch
    | Rem
    | Vw
    | Vh
    | Vmin
    | Vmax
    | Cm
    | Mm
    | In
    | Px
    | Pt
    | Pc
    | Pct



toString : Units -> String
toString unit =
    case unit of
        Em ->
            "em"
        Ex ->
            "ex"
        Ch ->
            "ch"
        Rem ->
            "rem"
        Vw ->
            "vw"
        Vh ->
            "vh"
        Vmin ->
            "vmin"
        Vmax ->
            "vmax"
        Cm ->
            "cm"
        Mm ->
            "mm"
        In ->
            "in"
        Px ->
            "px"
        Pt ->
            "pt"
        Pc ->
            "pc"
        Pct ->
            "%"

