

def pingpong(num)
  x = 0
  num_array = []
  while ( x < num )
    x = x + 1
    num_array.push(x)
  end
  num_array
end

def ping_replace(array)
  new_array = []
  array.each() do |number|
    number_string = number.to_s
    temp_array = number_string.split('')
    temp_array.each() do |digit|
      if (digit == "3") | (digit == "6")
        temp_array = ["ping"]
      elsif digit == "5"
        temp_array =["pong"]
      end
    end
    new_array.push(temp_array.join)
  end
  new_array
end
