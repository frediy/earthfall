module Earthfall

class Simulation
	TIME_INCREMENT = 1

	INITIAL_DEPTH = 0
	INITIAL_VELOCITY = 0

	DEPTH_OF_EARTHS_CORE = 6371.0 * 1000 # core of the earth

	def initialize(verbose: false)
		@verbose = verbose
	end

	def run
		depth = INITIAL_DEPTH
		gravity = gravity_from_depth(depth)
		velocity = INITIAL_VELOCITY
		time = 0

		# falling to the core
		while (depth < DEPTH_OF_EARTHS_CORE)
			time += 1
			depth += velocity * TIME_INCREMENT + gravity * TIME_INCREMENT**2 / 2
			gravity = gravity_from_depth(depth)
			velocity += gravity
			puts stats(time, depth, velocity, gravity) if @verbose
		end

		# falling back up to the surface
		time *= 2

		return time
	end

private

	def gravity_from_depth(depth)
		@gravity_from_depth_calculator ||= GravityFromDepthCalculator.new
		@gravity_from_depth_calculator.gravity(depth)
	end

	def stats(time, depth, velocity, gravity)
		"time: #{time} s, depth: #{depth.round(2)} m or #{(depth/1000).round(2)} km, velocity: #{velocity.round(2)} m/s or #{(velocity * 3.6).round(2)} km/h, gravity: #{gravity.round(2)} m/s^2"
	end
end

end