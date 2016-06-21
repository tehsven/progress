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

```
> p = Progress.to(100)
> (1..100).each do
>   p.inc
> end
{:current=>10, :total=>100, :percent_complete=>10.0, :ops_per_sec=>588235.2941176471, :eta=>2016-06-21 10:20:50 -0700}
{:current=>20, :total=>100, :percent_complete=>20.0, :ops_per_sec=>76335.87786259541, :eta=>2016-06-21 09:22:29 -0700}
{:current=>30, :total=>100, :percent_complete=>30.0, :ops_per_sec=>80000.0, :eta=>2016-06-21 09:25:39 -0700}
{:current=>40, :total=>100, :percent_complete=>40.0, :ops_per_sec=>88495.57522123893, :eta=>2016-06-21 09:31:11 -0700}
{:current=>50, :total=>100, :percent_complete=>50.0, :ops_per_sec=>93984.96240601504, :eta=>2016-06-21 09:37:58 -0700}
{:current=>60, :total=>100, :percent_complete=>60.0, :ops_per_sec=>88495.57522123893, :eta=>2016-06-21 09:43:28 -0700}
{:current=>70, :total=>100, :percent_complete=>70.0, :ops_per_sec=>82742.31678486998, :eta=>2016-06-21 09:52:34 -0700}
{:current=>80, :total=>100, :percent_complete=>80.0, :ops_per_sec=>83160.08316008316, :eta=>2016-06-21 10:15:51 -0700}
{:current=>90, :total=>100, :percent_complete=>90.0, :ops_per_sec=>86621.75168431184, :eta=>2016-06-21 11:30:43 -0700}
{:current=>100, :total=>100, :percent_complete=>100.0, :ops_per_sec=>84817.64206955048, :eta=>2016-06-21 09:06:46 -0700}
```

The #inc method accepts a value:
```
> p = Progress.to(100)
> step_size = 5
> (1..100).step(step_size) do
>   p.inc(step_size)
> end
{:current=>10, :total=>100, :percent_complete=>10.0, :ops_per_sec=>714285.7142857143, :eta=>2016-06-21 10:30:54 -0700}
{:current=>20, :total=>100, :percent_complete=>20.0, :ops_per_sec=>41753.65344467641, :eta=>2016-06-21 09:18:51 -0700}
{:current=>30, :total=>100, :percent_complete=>30.0, :ops_per_sec=>34965.03496503496, :eta=>2016-06-21 09:18:40 -0700}
{:current=>40, :total=>100, :percent_complete=>40.0, :ops_per_sec=>34364.26116838487, :eta=>2016-06-21 09:19:49 -0700}
{:current=>50, :total=>100, :percent_complete=>50.0, :ops_per_sec=>36390.101892285296, :eta=>2016-06-21 09:22:23 -0700}
{:current=>60, :total=>100, :percent_complete=>60.0, :ops_per_sec=>29629.62962962963, :eta=>2016-06-21 09:22:43 -0700}
{:current=>70, :total=>100, :percent_complete=>70.0, :ops_per_sec=>33269.961977186314, :eta=>2016-06-21 09:28:51 -0700}
{:current=>80, :total=>100, :percent_complete=>80.0, :ops_per_sec=>35634.74387527839, :eta=>2016-06-21 09:40:03 -0700}
{:current=>90, :total=>100, :percent_complete=>90.0, :ops_per_sec=>38793.10344827586, :eta=>2016-06-21 10:14:58 -0700}
{:current=>100, :total=>100, :percent_complete=>100.0, :ops_per_sec=>40816.32653061225, :eta=>2016-06-21 09:10:24 -0700}
```

With non-default options:
```
> p = Progress::Tracker.new(total: 100,
                            current: 10,
                            yield_interval: 20,
                            yield_block: lambda{|result| puts "I got a result: #{result}"})
> (1..100).each do
>   p.inc
> end
I got a result: {:current=>20, :total=>100, :percent_complete=>20.0, :ops_per_sec=>1428571.4285714286, :eta=>2016-06-21 12:41:18 -0700}
I got a result: {:current=>40, :total=>100, :percent_complete=>40.0, :ops_per_sec=>209424.0837696335, :eta=>2016-06-21 10:09:57 -0700}
I got a result: {:current=>60, :total=>100, :percent_complete=>60.0, :ops_per_sec=>178041.54302670623, :eta=>2016-06-21 10:26:30 -0700}
I got a result: {:current=>80, :total=>100, :percent_complete=>80.0, :ops_per_sec=>167364.01673640168, :eta=>2016-06-21 11:31:17 -0700}
I got a result: {:current=>100, :total=>100, :percent_complete=>100.0, :ops_per_sec=>170940.17094017094, :eta=>2016-06-21 09:12:58 -0700}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tehsven/progress.

