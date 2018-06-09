class Quick
  def quick_sort
     return [] if empty?
      pivot = delete_at(rand(size))
      left, right = partition(&pivot.method(:>))

      return *left.quick_sort, pivot, *right.quick_sort
  end
end
