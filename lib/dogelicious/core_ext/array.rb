require 'dogelicious'

class Array
  def dogeify(options ={})
    dogeify = Dogelicious.new
    map { |item| dogeify.process(item.to_s, options) }
  end
end
