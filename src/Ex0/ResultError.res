type t = {message: string, stack: string}

let fromJsExn = (exn: Js.Exn.t): t => {
  let message = switch Js.Exn.message(exn) {
  | Some(s) => s
  | None => "NO_MESSAGE"
  }
  let stack = switch Js.Exn.stack(exn) {
  | Some(s) => s
  | None => "NO_STACK"
  }
  {message: message, stack: stack}
}
