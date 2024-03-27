pub opaque type Signal(value) {
  Signal(value)
}

@external(javascript, "./signals_ffi.mjs", "_new")
pub fn new(value: t) -> Signal(t) {
  Signal(value)
}

@external(javascript, "./signals_ffi.mjs", "set")
pub fn set(_signal: Signal(t), value: t) -> Signal(t) {
  Signal(value)
}

@external(javascript, "./signals_ffi.mjs", "value")
pub fn value(signal: Signal(t)) -> t {
  case signal {
    Signal(value) -> value
  }
}

@external(javascript, "./signals_ffi.mjs", "peek")
pub fn peek(signal: Signal(t)) -> t {
  case signal {
    Signal(value) -> value
  }
}

@external(javascript, "./signals_ffi.mjs", "computed")
pub fn computed(fun: fn() -> t) -> t {
  fun()
}

@external(javascript, "./signals_ffi.mjs", "untracked")
pub fn untracked(fun: fn() -> t) -> t {
  fun()
}

@external(javascript, "./signals_ffi.mjs", "effect")
pub fn effect(_fun: fn() -> Nil) -> fn() -> Nil {
  fn() { Nil }
}

@external(javascript, "./signals_ffi.mjs", "batch")
pub fn batch(_fun: fn() -> Nil) -> Nil {
  Nil
}
