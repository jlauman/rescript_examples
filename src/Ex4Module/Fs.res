@bs.module("./FsExt.js") external readFileExt: string => string = "readFileExt"
@bs.module("./FsExt.js") external readFileAsync: string => Js.Promise.t<string> = "readFileAsyncExt"
@bs.module("./FsExt.js") external exists: string => bool = "existsExt"

type result = Belt.Result.t<string, ResultError.t>

let readFile = (path): result =>
  try {
    let s = readFileExt(path)
    Belt.Result.Ok(s)
  } catch {
  | Js.Exn.Error(e) => Belt.Result.Error(ResultError.fromJsExn(e))
  }
