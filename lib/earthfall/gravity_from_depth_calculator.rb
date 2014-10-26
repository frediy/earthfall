require 'interpolate'

module Earthfall

class GravityFromDepthCalculator
	DATASET = "#{Earthfall.root}/datasets/prem_depth_gravity_dataset.csv"

	def initialize(dataset: DATASET)
		load_dataset(dataset)
	end

	def gravity(depth)
		interpolation.at(depth)
	end

private

	def load_dataset(dataset)
		@gravity_from_depth_hash = Dataset.load(dataset)
	end

	def interpolation
		@interpolation ||= Interpolate::Points.new(@gravity_from_depth_hash)
	end
end

end