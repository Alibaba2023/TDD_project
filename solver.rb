class Solver
  def factorial(number)
    raise ArgumentError, 'Input must be a non-negative integer' if number.negative?

    result = 1
    (1..number).each { |i| result *= i }
    result
  end

  def reverse(word)
    word.reverse
  end

end
