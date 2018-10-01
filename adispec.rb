require 'sourcify'
require 'colorize'
require_relative './exceptions'
require_relative './assertions'

class Spec
  def initialize(desc)
    @desc = 0
    @tests = 0
    @passes = 0
    @fails = 0
    @@lastspec = self
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

  def inc_tests
    @tests += 1
  end

  def inc_passes
    @passes += 1
  end

  def inc_fails
    @fails += 1
  end

  def self.lastspec
    @@lastspec
  end
end

def spec(desc, &func)
  sp = Spec.new(desc)
  puts desc.yellow
  func.call
  msg = <<EOM
Result: #{sp.tests} ran, #{sp.passes.to_s.green} #{"passed".green}, #{sp.fails.to_s.red} #{"failed".red}
EOM
  puts msg
end

def describe(desc, &func)
  puts desc.blue + ":"
  func.call
  puts
end

def it(desc, &func)
  print desc + ": "
  Spec::lastspec.inc_tests
  begin
    func.call
  rescue BlockError
    Spec::lastspec.inc_fails
    puts
    return
  end
  Spec::lastspec.inc_passes
  puts
end
