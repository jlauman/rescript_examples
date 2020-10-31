@bs.module("./PrJs.js")
external catch: (Js.Promise.t<'a>, Js.Exn.t => unit) => unit = "catchError"

@bs.module("./PrJs.js")
external then: (Js.Promise.t<'a>, ('a, 't) => 't) => Js.Promise.t<'t> = "thenResult"
