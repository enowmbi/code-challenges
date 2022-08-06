def call_points(ops)
  return 0 if ops.empty?

  stack = []
  operations = ["C", "D", "+"]
  sum = 0

  ops.each do |entry|
    if operations.include? entry
      if entry == "C"
        val = stack.pop
        sum -= val
      elsif entry == "D"
        val = stack.last * 2
        stack << val
        sum += val
      else
        val = (stack.last + stack.last(2).first)
        stack << val
        sum += val
      end
    else
      val = entry.to_i
      stack << val
      sum += val
    end
  end
  sum
end
