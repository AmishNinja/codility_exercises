def solution(a)
  return 1 if a.empty?
  Array.new(a.length + 1) {|i| i + 1}.inject(:+) - a.inject(:+)
end

arr = [2,3,1,5]
p solution(arr)
arr = [1,2,8,4,6,7,3]
p solution(arr)