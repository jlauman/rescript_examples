// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Pr from "./Pr.bs.js";
import * as FsJs from "./Fs.js";
import * as Caml_exceptions from "bs-platform/lib/es6/caml_exceptions.js";

function readFile(prim) {
  return FsJs.readFile(prim);
}

var BigProblem = Caml_exceptions.create("Example.BigProblem");

console.log("Hello, ReScript!");

function printString(s) {
  console.log("s=", s);
  return true;
}

function btos(b) {
  if (b) {
    return "true";
  } else {
    return "false";
  }
}

Pr.$$catch(Pr.$$then(Pr.$$then(Pr.$$then(FsJs.readFile("src/promises/person1.json"), (function (s, param) {
                    console.log("s=", s);
                    return {
                            age: 50,
                            name: "Jack Dent"
                          };
                  })), (function (r, param) {
                console.log("r=", r);
                var len = "hello1".length;
                if (len === 5) {
                  throw {
                        RE_EXN_ID: BigProblem,
                        _1: "str length is 6",
                        Error: new Error()
                      };
                }
                return len;
              })), (function (i, param) {
            console.log("i=", i);
            return true;
          })), (function (e) {
        console.log(e);
        
      }));

export {
  readFile ,
  BigProblem ,
  printString ,
  btos ,
  
}
/*  Not a pure module */