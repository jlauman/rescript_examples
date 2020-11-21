export function catchErrorExt(promise, func) {
  promise.catch(func);
  return undefined;
}

export function thenResultExt(promise, func) {
  return promise.then(func);
}
