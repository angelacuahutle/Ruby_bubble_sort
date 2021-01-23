array = [12,34,22,42,50]
# create a method taking an array as its argument
def bubble_sort(array) #defining the method
    array_length = array.size #create a variable that has the length of the array
    return array if array_length <= 1 #avoid redundance
    swapped = false
    while swapped do #iteration
         #conditional statement & loop
         #iterating throught the array
        (array_length-1).times do |i| #substracting one makes the array works
        if array[i] > array[i+1]
            array[i], array[i+1] = array[i+1], array[i]
            swapped = true  # use if statement that verify values [i] and [i+1]
           # and swap if value [i]>[i+1]
        end
    end
    break if not swapped
  end
end
puts bubble_sort(array)



