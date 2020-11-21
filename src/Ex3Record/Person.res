type t = {
  age: int,
  name: string,
  alive: bool,
}

@bs.module("./PersonExt.js") external parseJsonExt: string => t = "parseJsonExt"

type parseResult = Belt.Result.t<t, ResultError.t>

let fromJson = (json: string): parseResult => {
  try {
    let record = parseJsonExt(json)
    Belt.Result.Ok(record)
  } catch {
  | Js.Exn.Error(e) => Belt.Result.Error(ResultError.fromJsExn(e))
  }
}
