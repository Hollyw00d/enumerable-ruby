require_relative "my_enumerable"

# Code below makes the native "Array"
# class include everything from the
# "MyEnumerable" module
class Array
  include MyEnumerable
end

RSpec.describe MyEnumerable do
  describe "my_each" do
    it "goes through each element and performs the block of code" do
      arr = [12, 24, 8, 9]

      output = []

      arr.my_each { |x| output << x + 20 }
      expect(output).to eq([32, 44, 28, 29])
    end
  end

  describe "my_select" do
    it "returns new array that meets condition" do
      arr = [12, 24, 8, 9]
      output = arr.my_select{ |x| x > 10 }
      expect(output).to eq([12, 24])
    end
  end
end
