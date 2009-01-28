class Error

  attr_accessor :code, :text

  def initialize
    @code = ''
    @text = ''
  end

  def to_s
    return @code + ': ' + @text
  end

end
