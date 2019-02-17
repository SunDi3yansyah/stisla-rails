<p align="center">
  <a href="https://getstisla.com">
    <img src="https://avatars2.githubusercontent.com/u/45754626?s=75&v=4" alt="Stisla logo" width="75" height="75">
  </a>
</p>

<h1 align="center">Stisla for Rails</h1>

<p align="center">
  Stisla is Free Bootstrap Admin Template and will help you to speed up your project, design your own dashboard UI and the users will love it.
</p>

[![Stisla Preview](https://camo.githubusercontent.com/2135e0f6544a7286a3412cdc3df32d47fc91b045/68747470733a2f2f692e6962622e636f2f3674646d6358302f323031382d31312d31312d31352d33352d676574737469736c612d636f6d2e706e67)](https://getstisla.com)


## Table of contents

- [Status](#status)
- [Link Stisla](#link-stisla)
- [Installation](#installation)
- [Usage](#usage)
- [Development](#development)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [License](#License)


## Status

[![Build Status](https://travis-ci.com/SunDi3yansyah/stisla-rails.svg)](https://travis-ci.com/SunDi3yansyah/stisla-rails)
[![License](https://img.shields.io/github/license/SunDi3yansyah/stisla-rails.svg)](LICENSE)
[![Gem Version](https://badge.fury.io/rb/stisla-rails.svg)](https://badge.fury.io/rb/stisla-rails)
[![Download total](https://img.shields.io/gem/dt/stisla-rails.svg?style=flat)](https://badge.fury.io/rb/stisla-rails)
[![GitHub last commit](https://img.shields.io/github/last-commit/SunDi3yansyah/stisla-rails.svg)](https://github.com/SunDi3yansyah/stisla-rails/commits/master)
[![GitHub issues](https://img.shields.io/github/issues/SunDi3yansyah/stisla-rails.svg)](https://github.com/SunDi3yansyah/stisla-rails/issues)


## Link Stisla
- Homepage: [getstisla.com](https://getstisla.com)
- Repository: [github.com/stisla/stisla](https://github.com/stisla/stisla)
- Documentation: [getstisla.com/docs](https://getstisla.com/docs)


## Installation

Add this line to your application's Gemfile:

``` ruby
gem 'stisla-rails'
```

And then execute:

``` bash
$ bundle
```

Or install it yourself as:

``` bash
$ gem install stisla-rails
```


## Usage

Open `app/assets/stylesheets/application.scss` then put like this:

``` scss
// ... other stuff

@import "style";
@import "components";

// ... other stuff
```

Open `app/assets/javascript/application.js` then put like this:

``` js
// ... other stuff

//= require stisla
//= require scripts
//= require custom

// ... other stuff
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SunDi3yansyah/stisla-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## Code of Conduct

Everyone interacting in the Stisla::Rails project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](LICENSE).
