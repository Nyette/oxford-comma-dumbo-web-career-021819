def oxford_comma(array)
  if array.size == 1
    string = array.join
  elsif array.size == 2
    string = array.join(" and ")
  elsif array.size >= 3
    string = ""
    range = 0..(array.size - 1)
    for index in range
      if index < array.size - 1
        string << "#{array[index]}, "
      else
        string << "and #{array.last}"
      end
    end
  else
    string = ""
  end
  return string
end

