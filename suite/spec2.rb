require_relative '../adispec'
require_relative './arr'

spec('Array error cases') {
  it('raises an error if you put at an invalid index') {
    subject = Arr.new()
    subject.append(2)
    assertRaise { subject.put(1, 1) }
  }

  it('raises an error if you get from an invalid index') {
    subject = Arr.new()
    subject.append(2)
    assertRaise { subject.get(1) }
  }
}
