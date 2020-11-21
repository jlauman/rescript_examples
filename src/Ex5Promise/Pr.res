@bs.module("./PrExt.js")
external catch: (Js.Promise.t<'a>, Js.Exn.t => unit) => unit = "catchErrorExt"

@bs.module("./PrExt.js")
external then: (Js.Promise.t<'a>, ('a, 't) => 't) => Js.Promise.t<'t> = "thenResultExt"
