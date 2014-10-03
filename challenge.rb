require 'pry'


def capitalize_each_string(a_collection_of_animals)
  a_collection_of_animals.map do |a|
    a.capitalize
  end
end

def fetch_the_dog(input)
  input.select do |animals|
    animals == "dog"
  end
end

def no_dogs_allowed(input)
  input.reject do |animals|
    animals == "dog"
  end
end

def count_the_animals(input)
  input.count
end

def fetch_the_first_two(input)
  input.first(2)
end

def fetch_CD_animals(input)
  input.find_all do |animals|
    animals == "cat" ||  animals == "dog"
  end
end

## DO NOT CHANGE CODE BELOW THIS LINE ##

animals = ["cat", "moose", "dog", "bird"]

p capitalize_each_string(animals) == ["Cat", "Moose", "Dog", "Bird"]

p fetch_the_dog(animals) == ["dog"]

p no_dogs_allowed(animals) == ["cat", "moose", "bird"]

p count_the_animals(animals) == 4

p fetch_the_first_two(animals)  == ["cat", "moose"]

p fetch_CD_animals(animals) == ["cat", "dog"]
