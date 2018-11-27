require "nmax/version"

module Nmax
  def self.run(numbers)
    numbers = 1 if numbers.eql?(0) || numbers.nil?
    num_array = []
    
    $stdin.each_line do |line|
      nums = line.scrub!.scan(%r{\d{1,1000}}).map(&:to_i)
      num_array << nums unless nums.empty?      
    end
    p num_array.flatten.max(numbers)
  end
end