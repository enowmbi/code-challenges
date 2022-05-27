# Determine if a number is prime or not. Add this method to integers to determine if they are prime

class Integer
  def prime_number?
    2.upto(Math.sqrt(self)) do |n|
      if self % n == 0
        return false
      end
    end
      true
  end
end

