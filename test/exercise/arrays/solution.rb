module Exercise
  module Arrays
    class << self
      def replace(array)
        max_num = array.reduce{|acc = 0, rec| rec > acc ? rec : acc}
        array = array.map{|el| el > 0 ? el = max_num : el}
      end

      def search(_array, _query)
        0
      end
    end
  end
end
