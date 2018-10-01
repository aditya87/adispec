require 'sourcify'
require 'colorize'
require_relative './exceptions'
require_relative './assertions'
require_relative './section'

def describe(desc, &func)
  sp = Section.new(desc)
  puts desc.blue + ":"
  func.call
  Section::specstack.pop
  if Section::specstack.empty?
    puts
    msg = <<EOM
Result: #{sp.tests} ran, #{sp.passes.to_s.green} #{"passed".green}, #{sp.fails.to_s.red} #{"failed".red}
EOM
    puts msg
  else
    Section::lastspec.inc_tests sp.tests
    Section::lastspec.inc_passes sp.passes
    Section::lastspec.inc_fails sp.fails
  end
end

def it(desc, &func)
  print desc + ": "
  Section::lastspec.inc_tests
  begin
    func.call
  rescue BlockError
    Section::lastspec.inc_fails
    puts
    return
  end
  Section::lastspec.inc_passes
  puts
end
