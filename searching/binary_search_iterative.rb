def binary_search(collection, value)

 low = 0
 high = collection.length - 1


 while low <= high

   mid = (low + high) / 2
   if collection[mid] > value

     high = mid - 1
   elsif collection[mid] < value

     low = mid + 1
   else
     return mid
   end
 end
 return "not found"
end



puts binary_search([10,2,31,4,"blue",16,73,8,11,14], "blue")
