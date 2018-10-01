require_relative '../adispec'
require_relative './arr'

describe('array') {
  it('instantiates as an empty array') {
    subject = Arr.new()
    assert { subject }
    assert { subject.size == 0 }
  }

  it('lets you append to itself') {
    subject = Arr.new()
    subject.append(5)
    subject.append(2)
    assert { subject.size == 2 }
  }

  it('lets you get elements at indices') {
    subject = Arr.new()
    subject.append(5)
    subject.append(2)
    assert { subject.get(0) == 5 }
    assert { subject.get(1) == 2 }
  }

  it('lets you replace elements') {
    subject = Arr.new()
    subject.append(5)
    subject.append(2)
    subject.put(0, 1)
    assert { subject.get(0) == 1 }
    assert { subject.get(1) == 2 }
  }

  it('instantiates with a size') {
    subject = Arr.new(2)
    assert { subject.size == 2 }
    assert { subject.get(0) == nil }
    assert { subject.get(1) == nil }
  }

  describe('error cases') {
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
}
