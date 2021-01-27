# create a method taking an array as its argument
# defining the method
def bubble_sort(array)
  array_length = array.size # create a variable that has the length of the array
  return array if array_length <= 1 # avoid redundance

  loop do # add a variable to check swapping
    swapped = false
    # conditional statement & loop
    # iterating throught the array
    (array_length - 1).times do |i| # substracting one makes the array works
      next unless array[i] > array[i + 1]

      array[i], array[i + 1] = array[i + 1], array[i]
      swapped = true # use if statement that verify values [i] and [i+1]
      # and swap if value [i]>[i+1]
    end
    break unless swapped
  end
  array
end

unorganized_array = [12, 34, 22, 42, 50]
p bubble_sort unorganized_array

def bubble_sort_by(array)
  array_length = array.length
 if array.length <= 1
    array
  else
    loop do
      swapped = false
      i = 0
      while i < (array.length - 1)
        yield_sort = yield(array[i], array[i + 1])
        p yield_sort
        if yield_sort.positive?
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
        end
        i += 1
      end
      break unless swapped
    end
  end
 p array
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
#=>['hi', 'hey', 'hello']
