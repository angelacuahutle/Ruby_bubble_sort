bubble (arr)= [12,34,22,42,50]

def bubble_sort #defining the method
    array_length = array.size
    return array if array_length <= 1 #sorting
    swapped = false
    while swapped do #iteration
         #conditional statement & loop?
    #iterating throught the array
    (array_length-1).times do |i|
        if array[i] > array[i+1]
            array[i], array[i+1] = array[i+1], array[i]
            swapped = true
        end
    end

        break if not swapped
end

array
end


