require 'sourcify'
require 'colorize'
require_relative './exceptions'
require_relative './assertions'

def describe(desc, &func)
  puts desc.blue + ":"
  func.call
  puts
end

def it(desc, &func)
  print desc + ": "
  func.call
  puts
end
