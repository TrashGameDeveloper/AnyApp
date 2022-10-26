open! Core
open! Bonsai_web

module Banner = struct
  let banner ~(banner_title : string) : Vdom.Node.t =
    Vdom.Node.section
      ~attr:(Vdom.Attr.classes ["hero"; "is-primary"])
      [ Vdom.Node.div
          ~attr:(Vdom.Attr.classes ["hero-body"])
          [ Vdom.Node.p
              ~attr:(Vdom.Attr.classes ["title"; "has-text-centered"])
              [Vdom.Node.text banner_title] ] ]
end

module Table = struct
  module EntryData = struct
    type t = {some_data: string} [@@deriving sexp, equal]

    let string_of_entry_data (entry_data : t) : string = entry_data.some_data
  end

  module Model = struct
    type t = EntryData.t List.t [@@deriving sexp, equal]
  end

  (* module Action = struct type t = Update of string [@@deriving sexp_of]
     end *)

  let table_entry ~(entry_data : EntryData.t) : Vdom.Node.t =
    Vdom.Node.div
      ~attr:(Vdom.Attr.classes ["container"; "is-fluid"; "block"])
      [ Vdom.Node.div
          ~attr:(Vdom.Attr.classes ["notification"; "is-info"])
          [Vdom.Node.text (EntryData.string_of_entry_data entry_data)] ]

  let mock_data : Model.t =
    [ {some_data= "something1"}
    ; {some_data= "something2"}
    ; {some_data= "something3"} ]

  let table () : Vdom.Node.t =
    let entries =
      List.map ~f:(fun data -> table_entry ~entry_data:data) mock_data
    in
    Vdom.Node.section
      ~attr:(Vdom.Attr.classes ["section"])
      [ Vdom.Node.h1
          ~attr:(Vdom.Attr.classes ["title"])
          [Vdom.Node.text "Some Entries"]
      ; Vdom.Node.div entries ]
end