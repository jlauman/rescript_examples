module HashMap = Belt.HashMap.String

let hm = HashMap.make(~hintSize=10)

Js.log2("isEmpty=", HashMap.isEmpty(hm))
HashMap.set(hm, "one", 1)
Js.log2("isEmpty=", HashMap.isEmpty(hm))
Js.log2(`has("one")=`, HashMap.has(hm, "one"))
HashMap.set(hm, "two", 2)
Js.log2(`toArray()=`, HashMap.toArray(hm))
let three = HashMap.get(hm, "three")
switch three {
| Some(n) => Js.log2("three=", n)
| None => Js.log(`no key "three"`)
}
let two = HashMap.get(hm, "two")
switch two {
| Some(n) => Js.log2("two=", n)
| None => Js.log(`no key "two"`)
}
