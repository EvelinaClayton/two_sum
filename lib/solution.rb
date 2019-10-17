def two_sum(nums, target)
    nums.each_with_index do |n, i|
        numbers = nums[i+1..-1]
        wanted_number = target - n

        if numbers.include?(wanted_number)
            return [i, numbers.index(wanted_number) + 1 + i]
        end
    end
end