def solution(a)
  return (a[0] - a[1]).abs if a.length == 2
  current = a[0]
  min = (current - a[1..a.length-1].inject{|sum,x| sum + x}).abs
  a.each_with_index do |x, idx|
    next if idx < 1
    remainder = (current - a[idx..a.length-1].inject{|sum,x| sum + x}).abs
    min = remainder if remainder < min
    current += a[idx]
  end
  min
end

p solution([3,1,2,4,3])