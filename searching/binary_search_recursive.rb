def binary_search(collection, value)
  if collection.include?(value)
    mid = collection.length / 2
    if collection[mid] = value
      return "Found #{value}"
    elsif collection[mid] > value
      new_collection = collection[0..mid]
      binary_search(new_collection, value)
    elsif collection[mid] < value
      new_collection = collection[mid..collection.length]
      binary_search(new_collection, value)
    end
    else
    puts "#{value} couldn't be found"
  end
end

puts binary_search([10,2,31,4,"blue",16,73,8,11,14], 73)
