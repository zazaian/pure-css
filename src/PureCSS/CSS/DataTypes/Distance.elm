module PureCSS.CSS.DataTypes.Distance exposing (..)



type LengthUnit number =
    PhysicalUnit number
    | VisualAngleUnit number
    | FontRelativeUnit number
    | ViewportPctUnit number


type FontRelativeUnit number =
    Em number
    | Ex number
    | Ch number
    | Rem number


type ViewportPctUnit number =
    Vw number
    | Vh number
    | Vmin number
    | Vmax number


type PhysicalUnit number =
    Cm number
    | Mm number
    | Q number
    | In number
    | Pc number
    | Pt number


type VisualAngleUnit number =
    Px number
