class Classify
  def self.it!(string)
    raise ArgumentError, "Wrong argument #{string.inspect}" unless string.class == String
    Classify.new.camelize(string)
  end
  
  def try_converting(string)
    unless /\A(?:::)?([A-Z]\w*(?:::[A-Z]\w*)*)\z/ =~ string
      raise ArgumentError, "#{string} is not a valid constant name!"
    end

    Object.module_eval("::#{$1}", __FILE__, __LINE__)
  end

  def camelize(string)
    self.try_converting(string.gsub(/^(.{1})|\_.{1}/) { |s| s.gsub(/[^a-z0-9]+/i, '').capitalize })
  end
end
