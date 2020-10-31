import { promises as Fs } from "fs";

export function readFile(path) {
  return Fs.readFile(path, "utf8");
}
