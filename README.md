# Progress

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/progress`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'progress'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install progress

## Usage

```ruby
2.2.1 :001 > p = Progress.new(total:100, yield_interval:10, yield_block:lambda{|res| puts res})
 => #<Progress:0x007fef7ba37290 @total=100, @current=0, @yield_interval=10, @yield_block=#<Proc:0x007fef7ba372e0@(irb):2 (lambda)>>
2.2.1 :002 > p.update(1)
 => nil
2.2.1 :003 > p.update(99)
{:current=>100, :total=>100, :percent_complete=>100.0, :ops_per_sec=>28.347049525697166, :eta=>2016-06-16 09:37:36 -0700}
 => nil
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tehsven/progress.

