
def caesar_cipher(string, shift)
  nums = string.chars.map { |char| char.ord }
  nums2 = nums.map { |num| (num >= 65 && num <= 90) || (num >= 97 && num <= 122) ? num : num.chr }
  nums3 = nums2.map { |num| num.is_a?(Numeric) ? num + shift : num }
  nums4 = nums3.map { |num| num.is_a?(Numeric) && num > 122 || (num.is_a?(Numeric) && num > 90 && num <97) ? num - 26 : num }
  nums4.map { |num| num.chr }.join
end
