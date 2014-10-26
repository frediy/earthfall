require "earthfall/version"

module Earthfall
	def self.root
		File.dirname __dir__
	end
end

require "earthfall/dataset"
require "earthfall/gravity_from_depth_calculator"
require "earthfall/simulation"
