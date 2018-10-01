class Section
  def initialize(desc)
    @desc = 0
    @tests = 0
    @passes = 0
    @fails = 0
    @setups = []
    @cleanups = []
    @@specstack ||= []
    @@specstack.push self
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

  def push_setup(block)
    @setups << block
  end

  def push_cleanup(block)
    @cleanups << block
  end

  def run_setups
    @setups.each do |setup|
      setup.call
    end
  end

  def run_cleanups
    @cleanups.each do |cleanup|
      cleanup.call
    end
  end

  def self.lastspec
    @@specstack.last
  end

  def self.specstack
    @@specstack
  end
end
