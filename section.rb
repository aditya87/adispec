class Section
  def initialize(desc)
    @desc = 0
    @tests = 0
    @passes = 0
    @fails = 0
    if defined? @@specstack
      @@specstack.push self
    else
      @@specstack = [self]
    end
  end

  def tests
    @tests
  end

  def passes
    @passes
  end

  def fails
    @fails
  end

  def inc_tests(n = 1)
    @tests += n
  end

  def inc_passes(n = 1)
    @passes += n
  end

  def inc_fails(n = 1)
    @fails += n
  end

  def self.lastspec
    @@specstack.last
  end

  def self.specstack
    @@specstack
  end
end
