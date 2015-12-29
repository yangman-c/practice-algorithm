def temp_d1(&block)
  puts "temp_d1===start"
  puts "temp_d1===got : #{block.call("yoo_temp_d1")}"
  puts "temp_d1===end"
end

def temp_d2
  puts "temp_d2[[GOGOGO!!]]"
  puts "temp_d2[[lamb no return]]"
  lam_1 = lambda do |x|
    "**lamb no return (#{x})**"
  end
  temp_d1 &lam_1

  puts "temp_d2[[proc no return]]"
  proc_1 = Proc.new do |x|
    "**proc no return (#{x})**"
  end
  temp_d1 &proc_1

  puts "temp_d2[[lamb has return]]"
  lam_2 = lambda do |x|
    puts "<<lamb return : start (#{x})>>"
    return "**lamb has return**"
  end
  temp_d1 &lam_2

  puts "temp_d2[[proc has return]]"
  proc_1 = Proc.new do |x|
    puts "<<proc return : start (#{x})>>"
    return "**proc has return**"
  end
  temp_d1 &proc_1

  puts "temp_d2[[BYEBYE!!]]"
end

#執行
# temp_d2


def get_num(x)
  x.times do |i|
    return i if i == 5 # 5
    # i if i == 5 # 10
    # i # 10
  end
end

# p "the num is #{get_num(10)}"

def gen_times(factor)
  # return Proc.new { |x| x * factor }
  Proc.new { |x| x * factor }
end

# p gen_times(3).call(3)

def foo(a, &b)
  b.call(a)
end

pr = Proc.new { |x| x }

p "the parameter of block #{foo(2, pr)}"
p "\n"

def bar(a, b)
  b.call(a)
end

proc_1 = Proc.new do |x|
  puts "<<proc return : start (#{x})>>"
  return "**proc has return**"
  # "**proc has return**"
end

# p "the invoke of block #{bar(3, proc_1)}"
p "\n"

def bark(a, b)
  b.call(a)
end

proc_2 = lambda do |x|
  puts "<<lambda return : start (#{x})>>"
  return "**lambda has return**" # the same answer
  # "**lambda has return**" # the same answer
end

# p "the invoke of block #{bark(3, proc_2)}"
# p "\n"
