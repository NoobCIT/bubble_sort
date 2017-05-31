def bubble_sort(array)
  i = 1
  j = 1
  n = array.length
  until j == n
    while i < n
      if array[i-1] > array[i]
        array[i], array[i-1] = array[i-1], array[i]
      end
      i += 1
    end
    j += 1
    i = 1
  end
  puts array.inspect
end

def bubble_sort_by(array)
  i = 1
  j = 1
  n = array.length
  until j == n
    while i < n
      if yield(array[i-1], array[i]) > 0
        array[i-1], array[i] = array[i], array[i-1]
      end
      i += 1
    end
    j +=1
    i = 1
  end
  puts array.inspect
end

bubble_sort_by(["cooler", "cools", "cool", "coo", "co", "c"]) do |left, right|
  left.length - right.length
end
