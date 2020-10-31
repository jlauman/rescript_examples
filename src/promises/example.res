@bs.module("./Fs.js") external readFile: string => Js.Promise.t<string> = "readFile"

exception BigProblem(string)

Js.log("Hello, ReScript!")

let printString = s => {
  Js.log2("s=", s)
  true
}

let btos = (b: bool) => b ? "true" : "false"

readFile("src/promises/person1.json")->Pr.then((s: string, _: Record.person) => {
  Js.log2("s=", s)
  {age: 50, name: "Jack Dent"}
  // Parse.toPerson(s)
})->Pr.then((r: Record.person, _: int) => {
  Js.log2("r=", r)
  let str = "hello1"
  let len = Js.String2.length(str)
  if len == 5 {
    raise(BigProblem("str length is 6"))
  }
  len
})->Pr.then((i: int, _: bool) => {
  Js.log2("i=", i)
  true
})->Pr.catch(e => Js.log(e))
