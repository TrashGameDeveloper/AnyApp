(* Compilation module for UI components *)
open! Bonsai_web

module Components : sig
  val banner : banner_title:string -> Vdom.Node.t

  val table_entry : unit -> Vdom.Node.t
end
