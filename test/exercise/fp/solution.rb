module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array)

      end

      def chars_count(films, threshold)
        films.reject { |film| film["rating_kinopoisk"].to_f < threshold || film["rating_kinopoisk"].nil? }
              .map { |film| film["name"] }
              .reduce(0) { |result, name| result + name.count('и') }
      end
    end
  end
end
