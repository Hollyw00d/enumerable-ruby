module MyEnumerable
  def my_each

    for i in 0..(self.length - 1)
      yield self[i]
    end

  end

  def my_select
    for i in 0..(self.length - 1)
      yield self[i]
    end


  end

end

class Array
  include MyEnumerable
end

# arr = [12, 24, 8, 9]
# output = []
# arr.my_each{ |x| output << x + 20 }

arr = [12, 24, 8, 9]

output = []

arr.my_select{ |x| output << (x > 10) }
puts output.to_s