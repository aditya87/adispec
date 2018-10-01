require_relative '../adispec'
require_relative './arr'

describe('Array') {
  describe('happy path') {
    describe('empty init') {
      setup {
        @subject = Arr.new()
      }

      it('instantiates') {
        assert { @subject }
        assert { @subject.size == 0 }
      }

      it('lets you append to itself') {
        @subject.append(5)
        @subject.append(2)
        assert { @subject.size == 2 }
      }

      it('lets you get elements at indices') {
        @subject.append(5)
        @subject.append(2)
        assert { @subject.get(0) == 5 }
        assert { @subject.get(1) == 2 }
      }

      it('lets you replace elements') {
        @subject.append(5)
        @subject.append(2)
        @subject.put(0, 1)
        assert { @subject.get(0) == 1 }
        assert { @subject.get(1) == 2 }
      }
    }

    describe('nonempty init') {
      it('instantiates') {
        @subject = Arr.new(2)
        assert { @subject.size == 2 }
        assert { @subject.get(0) == nil }
        assert { @subject.get(1) == nil }
      }
    }
  }

  describe('error cases') {
    setup {
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
