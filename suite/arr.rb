class Arr
  def initialize(size = 0)
    @size = size
    @data = Array.new(size, nil)
  end

  def size
    @data.length
  end

  def append(val)
    @data << val
  end

  def get(idx)
    raise IndexOOBError if idx >= size
    @data[idx]
  end

  def put(idx, val)
    raise IndexOOBError if idx >= size
    @data[idx] = val
  end
end

class IndexOOBError < RuntimeError
end
