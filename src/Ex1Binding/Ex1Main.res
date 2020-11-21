// let binding
let greeting = "greetings!"
Js.log(greeting)

// block scope
let message = {
  let word1 = "hello"
  let word2 = "world"
  word1 ++ " " ++ word2 ++ "!"
}
Js.log(message)

// shadowing
let result = 0
let result = result + 1
let result = "something " ++ Belt.Int.toString(result)
Js.log(`result=${result}`)

module PrivateLet = {
  %%private(let a = 3)
  let b = 4
  let getNumber = () => a + b
}
