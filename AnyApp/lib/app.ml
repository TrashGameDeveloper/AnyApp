open! Core
open! Bonsai_web
open! Components

let application =
  Vdom.Node.div
    [ Components.banner ~banner_title:"Raw Material Dashboard"
    ; Components.table () ]
  |> Bonsai.const
