class Temperature
  def initialize(temp_hash)
    @temp_hash = temp_hash
  end

  def to_fahrenheit
    if @temp_hash[:f] != nil
      return @temp_hash[:f]
    else
      celsius = @temp_hash[:c]
      (celsius * 9/5.0) + 32
    end
  end

  def to_celsius
    if @temp_hash != nil
      return @temp_hash[:c]
    else
      fahrenheit = @temp_hash[:f]
      (fahrenheit - 32) * 5/9.0
    end
  end
end
