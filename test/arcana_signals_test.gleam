import gleeunit
import gleeunit/should
import arcana_signals.{new, value}

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn new_test(){
  new(1) |> value
  |> should.equal(1)
}
