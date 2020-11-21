import { promises as FsPr } from "fs";
import Fs from "fs";

export function readFileAsyncExt(path) {
  return FsPr.readFile(path, "utf8");
}

export function readFileExt(path) {
  return Fs.readFileSync(path, "utf8");
}

export function existsExt(path) {
  return Fs.existsSync(path);
}
