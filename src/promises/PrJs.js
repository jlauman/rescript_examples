export function catchError(promise, func) {
  promise.catch(func);
  return undefined;
}

export function thenResult(promise, func) {
  return promise.then(func);
}
