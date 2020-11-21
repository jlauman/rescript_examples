let fileName = "README.md"
Js.log("exists=" ++ (Fs.exists(fileName) ? "true" : "false"))

switch Fs.readFile(fileName) {
| Ok(contents) => Js.log("contents...\n" ++ contents)
| Error(error) => Js.log2(error.message, error.stack)
}
