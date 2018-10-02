require 'adispec'
require_relative './hash'

describe('Hsh') {
  it('can write and read objects from a key') {
    h = Hsh.new
    h.put("0", "bar")
    assert { h.get("0") == "bar" }
  }
}
