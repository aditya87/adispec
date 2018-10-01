def assert &block
  begin
    raise AssertionError.new(&block) unless yield
    print "\u2713".green
  rescue AssertionError => e
    print "x".red
    puts e.message
  end
end

def assertRaise &block
  begin
    begin
      yield
    rescue Exception => e
      print "\u2713".green
      return
    end
  raise AssertExceptionError.new(&block)
  rescue AssertExceptionError => e
    puts "x".red + " " + e.message
  end
end

