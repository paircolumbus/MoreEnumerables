def capitalize_each_string(input)
  #implement your solution here
  input.map do |w|
    w.capitalize
  end
end

def fetch_the_dog(input)
  #implement your solution here
  input.partition do |w|
    w == "dog"
  end.first
end

def no_dogs_allowed(input)
  #implement your solution here
  input.select do |w|
    w != "dog"
  end
end

def count_the_animals(input)
  #implement your solution here
  input.size
end

def fetch_the_first_two(input)
  #implement your solution here
  input[0..1]
end

def fetch_CD_animals(input)
  #implement your solution here
  input.find_all do |w|
    w =~ /^(c|d)/
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
