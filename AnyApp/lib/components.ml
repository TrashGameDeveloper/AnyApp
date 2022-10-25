open! Bonsai_web

module Components = struct
  let banner ~(banner_title : string) : Vdom.Node.t =
    Vdom.Node.section
      ?attr:(Some (Vdom.Attr.classes ["hero"; "is-primary"]))
      [ Vdom.Node.div
          ?attr:(Some (Vdom.Attr.classes ["hero-body"]))
          [ Vdom.Node.p
              ?attr:(Some (Vdom.Attr.classes ["title"; "has-text-centered"]))
              [Vdom.Node.text banner_title] ] ]

  let table_entry () : Vdom.Node.t = Vdom.Node.div []
end
