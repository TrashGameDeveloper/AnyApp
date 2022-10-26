(* Compilation module for UI components *)
open! Bonsai_web

module Banner : sig
  val banner : banner_title:string -> Vdom.Node.t
end

module Table : sig
  val table : unit -> Vdom.Node.t
end
