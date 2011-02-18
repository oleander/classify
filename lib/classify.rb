class Classify
  def self.it!(string)
    cf = Classify.new
    cf.try_converting(cf.camelize(string))
  end
  
  def try_converting(string)
    unless /\A(?:::)?([A-Z]\w*(?:::[A-Z]\w*)*)\z/ =~ string
      raise ArgumentError, "#{string} is not a valid constant name!"
    end

    Object.module_eval("::#{$1}", __FILE__, __LINE__)
  end

  def camelize(string)
    raise ArgumentError, "Wrong argument #{string.inspect}" if not string.class == String or string.match(/(^\_)|(\_$)|([^a-z0-9\_])/i)
    string.gsub(/^(.{1})|\_.{1}/) { |s| s.gsub(/[^a-z0-9]+/i, '').capitalize }
  end
end
