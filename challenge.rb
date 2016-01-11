
def capitalize_each_string(input)
  #implement your solution here
  final_result = []
  intermediate = []
  input.each do |i|
  	 intermediate = i.split(//)
     intermediate[0] = intermediate[0].upcase
     result = intermediate.join
   	 final_result.push(result)
  end
  final_result
end

def fetch_the_dog(input)
  #implement your solution here
  result = []
  input.each_with_index do |animal, index|
  	 result.push(animal) if index == 2
  end
  result
end

def no_dogs_allowed(input)
  #implement your solution here
  result = []
  input.each_with_index do |animal, index|
  	result.push(animal) if index != 2
  end
  result
end

def count_the_animals(input)
  #implement your solution here
  input.length
 
end

def fetch_the_first_two(input)
  #implement your solution here
  result = []
  input.each_with_index do |animal, index|
  	result.push(animal) if index < 2
  end
  result
end

def fetch_CD_animals(input)
  #implement your solution here
  final = []
  result = []
  input.each do |i|
  	a = i.split(//)
  	if(a[0] == 'c' or a[0] == 'd')
  		result = a.join
  		final.push(result)
  	end
  end
  final
end



# DO NOT CHANGE CODE BELOW THIS LINE ##

animals = ["cat", "moose", "dog", "bird"]

p capitalize_each_string(animals) == ["Cat", "Moose", "Dog", "Bird"]

p fetch_the_dog(animals) == ["dog"] 

p no_dogs_allowed(animals) == ["cat", "moose", "bird"]

p count_the_animals(animals) == 4

p fetch_the_first_two(animals)  == ["cat", "moose"]

p fetch_CD_animals(animals) == ["cat", "dog"]
