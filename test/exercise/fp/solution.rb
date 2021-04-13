module Exercise
  module Fp
    class << self

      def rating(array)
        filtered_films = array.reject { |film| film['rating_kinopoisk'].to_f.nil? || film['rating_kinopoisk'].to_f.zero? }
                              .reject { |film| film['country'] == nil || film['country'].split(',').length < 2 }
        ratings = filtered_films.map { |film| film['rating_kinopoisk'].to_f}

        ratings.reduce(:+) / ratings.length
      end

      def chars_count(films, threshold)
        films.reject { |film| film["rating_kinopoisk"].to_f < threshold || film["rating_kinopoisk"].nil? }
              .map { |film| film["name"] }
              .reduce(0) { |result, name| result + name.count('и') }
      end
    end
  end
end
