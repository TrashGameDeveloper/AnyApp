(* Compilation module for UI components *)
open! Bonsai_web

val banner : banner_title:string -> Vdom.Node.t

val table : unit -> Vdom.Node.t
