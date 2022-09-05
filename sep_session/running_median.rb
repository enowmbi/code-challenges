# frozen_string_literal: true

def running_median(arr = [])
  return arr if arr.empty?

  medians = []
  list = []
  arr.each do |item|
    list << item
    list.sort!
    medians << median(list)
  end
  medians
end

def median(list)
  val =
    if list.length.odd?
      list[list.length / 2]
    else
      (list[(list.length / 2) - 1] + list[list.length / 2]) / 2.0
    end

  ((val * 10) % 10).zero? ? val.to_i : val
end

