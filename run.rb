require_relative './adispec'

class Suite
  def initialize
    @@passes = 0
    @@fails = 0
    @@tests = 0
    @@stacks = []
  end

  def self.inc_tests n
    @@tests += n
  end

  def self.inc_passes n
    @@passes += n
  end

  def self.inc_fails n
    @@fails += n
  end

  def self.tests
    @@tests
  end

  def self.passes
    @@passes
  end

  def self.fails
    @@fails
  end

  def self.stacks
    @@stacks
  end
end

Suite.new()

Dir["specs/*spec.rb"].each { |file|
  Suite.stacks.push file
}

Dir["specs/*spec.rb"].each { |file|
  load file
}
