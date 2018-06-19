# This method takes n arrays as input and combine them in sorted ascending  order
def poorly_written_ruby_three(*arrays)
  combined_array = []
  arrays.each do |array|
      combined_array += array
    end
  



    def insertion(combined_array)
      size = combined_array.length
      i = 0
      while i < size
        current = combined_array[i]
        j = i
        while j > 0 && combined_array[j-1] > current
          combined_array[j] = combined_array[j-1]
          j -= 1
        end
        combined_array[j] = current
        i += 1
      end
      return combined_array
    end

  # sorted_array = [combined_array.delete_at(combined_array.length-1)]
  #
  # for val in combined_array
  #   i = 0
  #   while i < sorted_array.length
  #     if val <= sorted_array[i]
  #       sorted_array.insert(i, val)
  #       break
  #     elsif i == sorted_array.length - 1
  #       sorted_array << val
  #       break
  #     end
  #     i+=1
  #   end
  # end
  #
  # # Return the sorted array
  # sorted_array
end
