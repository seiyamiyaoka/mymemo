class DataBuilder
  attr_accessor :nums
  def initialize
    @nums = []
  end

  def add_num
    nums << out_num
  end

  def init_ary(n)
    n.times { |_| add_num }
    nums
  end

  private

  def out_num
    rand(100).to_i
  end
end


def bable_sort(num_ary)
  num_ary.size.times do
    num_ary.each_with_index do |num, index|
      next if index == num_ary.size - 1
      if num_ary[index] > num_ary[index + 1]
        num_ary[index] = num_ary[index + 1]
        num_ary[index + 1] = num
      end
    end
  end
  num_ary
end

target = DataBuilder.new.init_ary(20)
puts "==================="
puts target
puts "==================="
puts bable_sort(target)

# https://www.codereading.com/algo_and_ds/algo/bubble_sort.html