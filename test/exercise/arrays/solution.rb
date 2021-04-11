module Exercise
  module Arrays
    class << self
      def replace(array)
        max_num = array.reduce{|acc = 0, rec| rec > acc ? rec : acc}
        array = array.map{|el| el > 0 ? el = max_num : el}
      end

      def search(_array, _query)
        index = (_array.length - 1) / 2

        return -1 if _array.length == 0 || (_array.length == 1 && _array[index] != _query)

        if _query == _array[index]
         index
        elsif _query > _array[index]
		      acc = search(_array[index + 1, _array.length], _query)
		      acc == -1 ? -1 : index + 1 + acc
        else
          search(_array[0, index], _query)
        end
      end
    end
  end
end
