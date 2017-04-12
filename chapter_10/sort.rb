def sort(array)
  check_sort(array, [])
end

def check_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |test_obj|
    if test_obj < smallest
      still_unsorted.push(smallest)
      smallest = test_obj
    else
      still_unsorted.push(test_obj)
    end
  end
  sorted.push(smallest)

  check_sort(still_unsorted,sorted)
end
puts sort(['yes','this','is','working'])
