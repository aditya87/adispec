require_relative '../lib/adispec'
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

      describe('appending, reading and replacing') {
        setup {
          @subject.append(5)
        }

        describe('more appending') {
          setup {
            @subject.append(2)
          }

          it('lets you append to itself') {
            assert { @subject.size == 2 }
          }

          it('lets you get elements at indices') {
            assert { @subject.get(0) == 5 }
            assert { @subject.get(1) == 2 }
          }

          it('lets you replace elements') {
            @subject.put(0, 1)
            assert { @subject.get(0) == 1 }
            assert { @subject.get(1) == 2 }
          }
        }
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
}
