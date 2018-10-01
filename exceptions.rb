class AssertionError < RuntimeError
  def initialize(&block)
    @msg = "Assertion " + block.to_source + " failed"
  end

  def message
    @msg
  end
end

class AssertExceptionError < RuntimeError
  def initialize(&block)
    @msg = "Assertion " + block.to_source + " failed to throw an exception"
  end

  def message
    @msg
  end
end

class BlockError < RuntimeError
end
