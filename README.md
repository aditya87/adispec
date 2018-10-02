# adispec

Dead simple ruby testing and assertion library. No fancy matchers. Just `assert`
with a block.

### how to write specs

Key control-flow functions are `describe`, `it`, `setup` and `cleanup`.
All setups and cleanups must be at the beginning of their respective describe
blocks.

Sample spec:
```
  require 'adispec'

  describe('ThingToTest') {
    setup {
      @thing = Thing.new
      @thing.do_some_setup
    }

    cleanup {
      @thing.destroy
    }

    it('Does important things') {
      result = @thing.do
      assert { result == expected }
    }

    describe('When given a particular condition') {
      setup {
        @thing.conditional_setup
      }

      it('Does more important things') {
        result = @thing.do_other
        assert { result == expected }
      }
    }
  }
```

### how to install

`$ gem install adispec`

### how to run

It runs all files in your specs directory that end with `_spec.rb`. Recursively
finds sub-directories.

* `$ adispec <PATH_TO_SPECS_DIRECTORY>`
* `$ adispec` (assumes that all specs are located in the `specs` directory)

## contributing

PRs are welcome. To run tests, simply `$ rake spec`. You will need the "rake" gem,
obviously.
