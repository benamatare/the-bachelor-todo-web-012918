require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
contestants_name = []
data.each do |seasons, metadata|
  if seasons.downcase == season.downcase
    metadata.each do |contestants_data|
      if contestants_data.has_value?("Winner") == true
        contestants_data.each do |key, value|
          if key == "name"
            contestants_name = value.split(" ")
          end
        end
      end
    end
  end
end
contestants_name[0]
end


def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, metadata|
    metadata.each do |contestants_data|
      if contestants_data.has_value?(occupation) == true
        contestants_data.each do |key, value|
        if key == "name"
          name = value
          end
        end
      end
      end
    end
    name
  end
def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, metadata|
    metadata.each do |contestants_data|
      if contestants_data.has_value?(hometown) == true
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  holder_array = []
  data.each do |season, metadata|
    metadata.each do |contestants_data|
      if contestants_data.has_value?(hometown) == true
        contestants_data.each do |key, value|
          if key == "occupation"
            holder_array << value
          end
        end
      end
    end
  end
  holder_array[0]
end

def get_average_age_for_season(data, season)
  # code here
  holder_array =[]
  data.each do |seasons, metadata|
    if seasons == season
      metadata.each do |contestants_data|
        contestants_data.each do |key, value|
          if key == "age"
            holder_array << value.to_f
          end
        end
      end
    end
  end
holder_array.inject(0.0) { |x, y| x + 1y}.round / holder_array.size
end
