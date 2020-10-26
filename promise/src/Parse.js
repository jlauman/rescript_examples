export function toPerson(string) {
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
  const age = json.age;
  const name = json.name;
  return { age, name };
}
