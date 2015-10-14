def solution(x,y,d)
  ((y - x) / d.to_f).ceil
end

p solution(10, 85, 30)