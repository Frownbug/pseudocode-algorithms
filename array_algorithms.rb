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
