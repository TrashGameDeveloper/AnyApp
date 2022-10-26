open! Core
open! Bonsai_web
open! Components

let application =
  Vdom.Node.div
    [ Banner.banner ~banner_title:"Global Energy Consumption Dashboard"
    ; Table.table () ]
  |> Bonsai.const
