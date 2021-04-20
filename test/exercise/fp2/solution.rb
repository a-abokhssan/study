module Exercise
  module Fp2
    class MyArray < Array
      def my_each(&blk)
        first_elem = first
        rest_elems = MyArray.new(self[1, length])
        blk.call(first_elem)
        if rest_elems.empty?
          first_elem
        else
          rest_elems.my_each(&blk)
        end
        self
      end

      def my_map(&blk)
        result = MyArray.new
        function = ->(acc, el) { acc << blk.call(el) }
        MyArray.new(my_reduce(result, &function))
      end

      def my_compact
        result = MyArray.new
        function = ->(acc, el) { el.nil? ? acc : acc << el }
        MyArray.new(my_reduce(result, &function))
      end

      def my_reduce(acc = nil, &blk)
        first_elem = first
        rest_elems = MyArray.new(self[1, length - 1])
        if rest_elems.empty?
          blk.call(acc, first_elem)
        else
          acc = acc.nil? ? first_elem : blk.call(acc, first_elem)
          rest_elems.my_reduce(acc, &blk)
        end
      end
    end
  end
end
