# adispec

Dead simple ruby testing and assertion library

### how to write specs

Sample spec:
```
  describe('ThingToTest') {
    setup {
      @thing = Thing.new
      @thing.do_some_setup
    }

    it('Does important things') {
      result = @thing.do
      assert { result == expected }
    }
  }
```

### how to install

`$ gem install adispec`

### how to run

It runs all files in your specs directory that end with "\_spec.rb".

* `$ adispec <PATH_TO_SPECS_DIRECTORY>`
* `$ adispec` (assumes that all specs are stored under "specs")

## contributing

PRs are welcome. To run tests, simply `rake spec`. You will need the "rake" gem,
obviously.
