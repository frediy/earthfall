require 'spec_helper'

module Earthfall

describe Simulation do
	describe "run" do
		it "should spit out a result" do
			p Simulation.new(verbose: true).run
		end
	end
end

end