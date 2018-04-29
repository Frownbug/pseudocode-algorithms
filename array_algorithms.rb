#how many of a specified value are in an array
def countOf(array, element)
  count = 0
  array.each do |x|
    next if element != x
    count += 1
  end
  count
end

#check if array contains a certain element
def includes(array, element)
  is_present = false
  array.each do |x|
    next if element != x
    is_present = true
    break
  end
  is_present
end

#summing the elements of an array
def addValues(array)
  sum = 0
  array.each {|x| sum += x}
  sum
end

#remove all occurances of an element from an array
def removeValue(array, element)
  new_array = []
  i = 0
  array.each do |x|
    next if element == x
    new_array[i] = x
    i += 1
  end
  new_array
end

#return the index of an element
def index(array, element)
  i = 0
  is_present = false
  array.each do |x|
    if element == x
      is_present = true
      break
    else
      i += 1
    end
  end
  if is_present == true
    i
  else
    nil
  end
end

#double the array
def double(array)
  array * 2
end

#return list of unique values in an array
def unique(array)
  unique_array = []
  array.each do |x|
    next if includes(unique_array, x)
    unique_array << x
  end
  unique_array
end

#returns element at given index
def valueAtIndex(array, index)
  i = 0
  value = nil
  array.each do |x|
    if i == index
      value = x
      break
    else
      i += 1
    end
  end
  value
end

#reverse an array
def reverse(array)
  i = -1
  new_array = []
  array.each do
    new_array << array[i]
    i -= 1
  end
  new_array
end

#return last element in array
def last(array)
  array[-1]
end

#returns smallest value in array
def smallest(array)
  i = 0
  min = array[0]
  array.each do
    if array[i] < min
      min = array[i]
    end
    i += 1
  end
  min
end

#returns largest value in array
def largest(array)
  i = 0
  max = array[0]
  array.each do
    if array[i] > max
      max = array[i]
    end
    i += 1
  end
  max
end

#returns count of elements of the same value in the same position, in two arrays
def countSameValuePosition(array_one, array_two)
  i = 0
  count = 0
  array.each do
    if array_one[i] == array_two[i]
      count += 1
    else
      i += 1
    end
  end
  count
end

#returns true if sorted anf false if not
def sorted(array)
  is_sorted = true
  i = 0
  array.each do
    if array[i+1] == nil
      break
    elsif array[i] <= array[i + 1]
      i += 1
    else
      is_sorted = false
      break
    end
  end
  is_sorted
end

#returns every other element in an array
def every_other(array)
  i = 0
  new_array = []
  array.each do
      new_array << array[i]
      i += 2
      if array[i] == nil
        break
    end
  end
  new_array
end
