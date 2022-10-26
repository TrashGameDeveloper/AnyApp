open! Bonsai_web

let banner ~(banner_title : string) : Vdom.Node.t =
  Vdom.Node.section
    ?attr:(Some (Vdom.Attr.classes ["hero"; "is-primary"]))
    [ Vdom.Node.div
        ?attr:(Some (Vdom.Attr.classes ["hero-body"]))
        [ Vdom.Node.p
            ?attr:(Some (Vdom.Attr.classes ["title"; "has-text-centered"]))
            [Vdom.Node.text banner_title] ] ]

let table_entry i : Vdom.Node.t =
  Vdom.Node.div
    ?attr:(Some (Vdom.Attr.classes ["container"; "is-fluid"; "block"]))
    [ Vdom.Node.div
        ?attr:(Some (Vdom.Attr.classes ["notification"; "is-info"]))
        [Vdom.Node.text (string_of_int i)] ]

let table () : Vdom.Node.t =
  let entries = List.map (fun i -> table_entry i) [1; 2; 3; 4; 5] in
  Vdom.Node.section
    ?attr:(Some (Vdom.Attr.classes ["section"]))
    ( Vdom.Node.h1
        ?attr:(Some (Vdom.Attr.classes ["title"]))
        [Vdom.Node.text "Some Entries"]
    :: entries )
