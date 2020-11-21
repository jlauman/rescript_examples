@bs.module("fs") external readFileSync: (string, string) => string = "readFileSync"

let json = readFileSync("src/Ex3Record/person1.json", "utf8")
Js.log(json)

let p = Person.fromJson(json)
switch p {
| Ok(person) => Js.log(person)
| Error(e) => Js.log(e.message)
}
