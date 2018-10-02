Gem::Specification.new do |s|
  s.name        = 'adispec'
  s.version     = '0.2.0'
  s.date        = '2018-10-01'
  s.summary     = "Keep ruby tests simple"
  s.description = "Testing/assertion library for Ruby"
  s.authors     = ["Aditya Anchuri"]
  s.email       = 'aditya.anchuri@gmail.com'
  s.files       = ["lib/adispec.rb", "lib/assertions.rb", "lib/exceptions.rb", "lib/section.rb", "lib/suite.rb"]
  s.homepage    = 'http://rubygems.org/gems/adispec'
  s.license     = 'MIT'
  s.executables << 'adispec'
end
