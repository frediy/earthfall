require 'spec_helper'

module Earthfall

describe Dataset do
	DATASET = "#{Earthfall.root}/spec/datasets/test.csv"

	describe 'load' do
		it 'should load dataset and convert it to SI units' do
			depth_to_gravity_hash = Dataset.load(DATASET)
			expect(depth_to_gravity_hash).to eq({0.0 => 10.0, 2000.0 => 20.0, 3000.0 => 15.005})
		end
	end
end

end