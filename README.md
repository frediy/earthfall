# Earthfall

A simple simulation for calculating how long it takes to fall through the earth.

The simulation uses a linear interpolation of the PREM dataset:

http://gps-staging-storage.cloud.caltech.edu.s3.amazonaws.com/people_personal_assets/dla/DLApepi81.pdf

## Installation

Add this line to your application's Gemfile:

    gem 'earthfall'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install earthfall

## Usage

	Earthfall.Simulation.new(verbose: true).run

	time: 1 s, depth: 4.91 m or 0.0 km, velocity: 9.82 m/s or 35.34 km/h, gravity: 9.82 m/s^2
	time: 2 s, depth: 19.63 m or 0.02 km, velocity: 19.63 m/s or 70.67 km/h, gravity: 9.82 m/s^2
	time: 3 s, depth: 44.17 m or 0.04 km, velocity: 29.45 m/s or 106.01 km/h, gravity: 9.82 m/s^2
	...
	(ends at earths core and multiplies time by two)

	=> seconds

## Contributing

1. Fork it ( https://github.com/[my-github-username]/earthfall/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
