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

  end
end
