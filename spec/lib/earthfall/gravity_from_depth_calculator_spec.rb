require 'spec_helper'

module Earthfall

describe GravityFromDepthCalculator do
	DATASET = "#{Earthfall.root}/spec/datasets/test.csv"

	describe 'load' do
		it 'should load dataset and interpolate correctly' do
			calculator = GravityFromDepthCalculator.new(dataset: DATASET)
			expect(calculator.gravity(0)).to eq(10)
			expect(calculator.gravity(1000)).to eq(15)
			expect(calculator.gravity(1500)).to eq(17.5)
			expect(calculator.gravity(2000)).to eq(20)
			expect(calculator.gravity(3000)).to eq(15.005)
		end
	end
end

end