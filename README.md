# dynamic_error_pages

[![Gem Version](https://badge.fury.io/rb/dynamic_error_pages.png)](http://badge.fury.io/rb/dynamic_error_pages)
[![Build Status](https://travis-ci.org/marcusg/dynamic_error_pages.png?branch=master)](https://travis-ci.org/marcusg/dynamic_error_pages)
[![Code Climate](https://codeclimate.com/github/marcusg/dynamic_error_pages.png)](https://codeclimate.com/github/marcusg/dynamic_error_pages)
[![Dependency Status](https://gemnasium.com/marcusg/dynamic_error_pages.png)](https://gemnasium.com/marcusg/dynamic_error_pages)

Engine that helps you to generate dynamic error pages with Rails

## Requirements

```rails >= 3.2```

## Installation

Add this line to your application's Gemfile:

    gem 'dynamic_error_pages'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dynamic_error_pages

## Usage

Just place your custom error templates inside the ``` app/views/dynamic_error_pages/errors ``` folder. The files need to
be named like the returned status code. The ``` 404.html.erb ``` would be used for status code 404 like ```ActiveRecord::RecordNotFound``` would raise for example.

If an error is raised and no template for the status code can be found, the engine will fallback to the ```404.html.erb```-template.

That's all!

## TODO

1. Support more formats
2. Write more tests

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
