import { effect as _effect, batch as _batch } from "@preact/signals-core";

export { signal as new, computed, untracked } from "@preact/signals-core";

export function _new(value) {
  return _signal(value);
}

export function set(signal, value) {
  signal.value = value;
  return signal;
}

export function value(signal) {
  return signal.value;
}

export function peek(signal) {
  return signal.peek();
}

export function effect(callback) {
  const dispose = _effect(callback);
  return () => {
    dispose();
    return undefined;
  };
}

export function batch(callback) {
  _batch(callback);
  return undefined;
}
