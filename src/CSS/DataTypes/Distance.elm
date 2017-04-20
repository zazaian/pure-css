module CSS.DataTypes.Distance exposing (..)


type FontRelativeUnit =
    Em
    | Ex
    | Ch
    | Rem
    | Vw


type ViewportPctUnit =
    Vw
    | Vh
    | Vmin
    | Vmax


type RelativeUnit =
    FontRelativeUnit
    | ViewportPctUnit


type PhysicalUnit =
    Cm
    | Mm
    | Q
    | In
    | Pc
    | Pt


type alias VisualAngleUnit =
    Px


type AbsoluteUnit =
    PhysicalUnit
    | VisualAngleUnit
