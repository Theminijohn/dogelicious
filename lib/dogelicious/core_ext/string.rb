require 'dogelicious'

class String
  def dogeify(options = {})
    Dogelicious.new.process(self, options)
  end
end
