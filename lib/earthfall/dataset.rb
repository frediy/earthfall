require 'csv'

module Dataset
	def self.load(dataset)
		depth_to_gravity_hash = {}
		CSV.foreach(dataset) do |row|
			next unless row.first =~ /^[0-9.]+$/ # ignore non-numeric lines
			row = row.map(&:to_f)
			depth = row[0] * 1000 # convert depth km to m
			gravity = row[1] / 100 # convert gravity cm/s^2 to m/s^2
			depth_to_gravity_hash[depth] = gravity
		end
		depth_to_gravity_hash
	end
end