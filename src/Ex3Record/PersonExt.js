export function parseJsonExt(string) {
  const json = JSON.parse(string);
  if (!"age" in json) {
    throw new Error('JSON has no "age" property');
  }
  if (!"name" in json) {
    throw new Error('JSON has no "name" property');
  }
  if (typeof json.age !== "number") {
    throw new Error('JSON "age" value is not number');
  }
  if (typeof json.name !== "string") {
    throw new Error('JSON "name" value is not string');
  }
  if (!"alive" in json) {
    throw new Error('JSON has no "alive" property');
  }
  if (typeof json.alive !== "boolean") {
    throw new Error('JSON "age" value is not boolean');
  }
  const age = json.age;
  const name = json.name;
  const alive = json.alive;
  return { age, name, alive };
}
