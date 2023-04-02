def max_sub_array(nums)
  return nums.max if nums.length == 1 || nums.all?(&:negative?)
  max_so_far = -(2.pow(53)) - 1
  max_ending_here = 0
  for index in 0..nums.length
    max_ending_here += nums[index].to_i
    max_so_far = max_ending_here if (max_so_far < max_ending_here)

    max_ending_here = 0 if max_ending_here < 0
  end

  return max_so_far
end
