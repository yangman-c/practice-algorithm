# 10个数字
require 'pry'

def reverse_any_string_make_sure_uniq(s)
  return s if s.size == 1

  s.chars.each_with_index do |e, i|
    new_str = s.delete(s[i])
    temp_str = s[i]
    temp_str
    new_str.chars.each_with_index do |x|
    end
    result << temp_str
    reverse_any_string_make_sure_uniq(new_str, i, result)
  end
end

p "get result of number?: #{reverse_any_string_make_sure_uniq('123')}"
