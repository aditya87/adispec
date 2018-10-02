require_relative './adispec'

dirname = ARGV.empty? ? "specs" : ARGV[0]
raise "Could not find #{dirname}: No such file or directory" unless Dir.exist?(dirname)

Suite.new()

Dir["#{dirname}/*spec.rb"].each { |file|
  Suite.stacks.push file
}

Dir["#{dirname}/*spec.rb"].each { |file|
  load file
}
