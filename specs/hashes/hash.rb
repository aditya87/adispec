class Hsh
  def initialize
    @hash = Hash.new
  end

  def put(key, val)
    @hash[key] = val
  end

  def get(key)
    @hash[key]
  end
end
