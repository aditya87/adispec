require_relative '../lib/adispec'
require_relative './arr'

describe('Array') {
  describe('error cases') {
    @subject = Arr.new()

    cleanup {
      @subject = Arr.new()
    }

    it('raises an error if you put at an invalid index') {
      @subject.append(2)
      assertRaise { @subject.put(1, 1) }
    }

    it('raises an error if you get from an invalid index') {
      @subject.append(2)
      assertRaise { @subject.get(1) }
    }
  }
}
