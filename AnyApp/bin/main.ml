open! Core
open! Bonsai_web
module Components = AnyAppLib.Components.Components

let component =
  Components.banner ~banner_title:"Raw Material Dashboard" |> Bonsai.const

let (_ : _ Start.Handle.t) =
  Start.start Start.Result_spec.just_the_view ~bind_to_element_with_id:"app"
    component
