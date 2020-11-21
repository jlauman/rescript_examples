Js.log("Ex5Main")

exception StringLengthError(string)

let btos = (b: bool) => b ? "true" : "false"

Fs.readFileAsync("src/Ex3Record/person1.json")->Pr.then((s1: string, _: Person.t) => {
  let n = 3
  let s = switch n {
  | 1 => s1
  | 2 => `{"age": 33, "name": "Jack Dent", "alive": true}`
  | 3 => `{"age": 33, "alive": true}`
  | _ => Js.Exn.raiseError(j`unhandled n=$n`)
  }
  Js.log2("s=", s)
  switch Person.fromJson(s) {
  | Ok(person) => person
  | Error(e) => raise(Js.Exn.raiseError(e.message))
  }
  // Parse.toPerson(s)
})->Pr.then((r: Person.t, _: int) => {
  Js.log2("r=", r)
  let str = "hello1"
  let len = Js.String2.length(str)
  if len == 5 {
    raise(StringLengthError("str length is 6"))
  }
  len
})->Pr.then((i: int, _: bool) => {
  Js.log2("i=", i)
  true
})->Pr.catch(e => Js.log(e))
