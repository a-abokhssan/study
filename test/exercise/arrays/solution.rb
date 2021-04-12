module Exercise
  module Arrays
    class << self
      def replace(array)
        max_num = array.reduce{|acc = 0, rec| rec > acc ? rec : acc}
        array = array.map{|el| el > 0 ? el = max_num : el}
      end

      def search(array, query)
        index = (array.length - 1) / 2

        return -1 if array.length == 0 || (array.length == 1 && array[index] != query)

        if query == array[index]
          index
        elsif query > array[index]
		      acc = search(array[index + 1, array.length], query)
		      acc == -1 ? -1 : index + 1 + acc
        else
          search(array[0, index], query)
        end
      end
    end
  end
end
