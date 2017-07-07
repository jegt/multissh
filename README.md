# Multissh

Runs a ssh command on multiple hosts in parallel.

## Installation

    $ gem install multissh

## Usage

multissh expects one or more hostnames on STDIN and the command and arguments to run as arguments to multissh.

Examples:

`echo foo.bar.com | multissh ls -l`

`cat hosts.txt | multissh "ls -l | grep foo"`

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jegt/multissh.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

