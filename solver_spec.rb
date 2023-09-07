# solver_spec.rb
require_relative 'solver'

RSpec.describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns 1 for 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the factorial of a positive integer' do
      expect(solver.factorial(1)).to eq(1)
      expect(solver.factorial(5)).to eq(120)
    end

    it 'raises an exception for a negative integer' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end

    it 'returns 1 for 1' do
      expect(solver.factorial(1)).to eq(1)
    end

    it 'returns 1 for 2' do
      expect(solver.factorial(2)).to eq(2)
    end
  end

  describe '#reverse' do
    it 'returns the reversed string' do
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('world')).to eq('dlrow')
    end

    it 'returns an empty string for an empty string' do
      expect(solver.reverse('')).to eq('')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" for multiples of 3' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" for multiples of 5' do
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" for multiples of both 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for other cases' do
      expect(solver.fizzbuzz(1)).to eq('1')
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
