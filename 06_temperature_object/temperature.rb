class Temperature

  attr_reader :temp_hash

  def initialize(temp_hash)
    @temp_hash = temp_hash
  end

  def to_fahrenheit
    key_array= self.temp_hash.keys
    if key_array.include?(:f)
      return self.temp_hash[:f]
    end
    self.temp_hash[:c] = (self.temp_hash[:c] * 9.0/5.0) + 32
  end

  def to_celsius
    key_array= self.temp_hash.keys
    if key_array.include?(:c)
      return self.temp_hash[:c]
    end
      self.temp_hash[:f] = ((self.temp_hash[:f]) - 32) * 5.0/9.0
  end

  def self.in_fahrenheit(temp)
    temperature = self.new({:f => temp})
  end

  def self.in_celsius(temp)
    temperature = self.new({:c => temp})
  end

end

class Celsius < Temperature
  def initialize(temp)
    @temp_hash = {:c => temp}
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @temp_hash = {:f => temp}
  end
end
