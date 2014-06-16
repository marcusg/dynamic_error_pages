# dynamic_error_pages

[![Gem Version](https://badge.fury.io/rb/dynamic_error_pages.png)](http://badge.fury.io/rb/dynamic_error_pages)
[![Build Status](https://travis-ci.org/marcusg/dynamic_error_pages.png?branch=master)](https://travis-ci.org/marcusg/dynamic_error_pages)
[![Code Climate](https://codeclimate.com/github/marcusg/dynamic_error_pages.png)](https://codeclimate.com/github/marcusg/dynamic_error_pages)
[![Dependency Status](https://gemnasium.com/marcusg/dynamic_error_pages.png)](https://gemnasium.com/marcusg/dynamic_error_pages)

Engine that helps you to generate dynamic error pages with Rails

## Requirements

```rails >= 3.2```

## What and why

Normally Rails places some static error pages for special error codes (404, 422 and 500) inside the *public* directory. 
These files are rendered if an error occures. But these templates are rendered without a layout. 
This causes a bad integration into your custom layout. 
The ``` dynamic_error_pages ``` gem let you create your own templates which are rendered inside your application layout. 

## Installation

Add this line to your application's Gemfile:

    gem 'dynamic_error_pages'

And then execute:

    $ bundle

## Usage

### Include your templates

Just place your custom error templates inside the ``` app/views/dynamic_error_pages/errors ``` folder. The files need to
be named like the returned status code. The ``` 404.html.erb ``` would be used for status code 404 like ```ActiveRecord::RecordNotFound``` would raise for example.

If an error is raised and no template for the status code can be found, the engine will fallback to the ```404.html.erb```-template.

### Include the routing

Activate the routes for dynamic error handling in your ```routes.rb```. 

```
YourApp::Application.routes.draw do
  # ....
  
  dynamic_error_pages

end
```

### Custom error handling

You may want to handle the incoming errors in a different way the gem handles this. Just create a subclass of 
For example, create a file named ``` errors_controller.rb ``` in ``` app/controllers ```.


    class ErrorsController < DynamicErrorPages::ErrorsController
      skip_before_filter :my_fancy_stuff # change your filters...

      def show
        # do whatever you want...
        super
      end
    end

And adjust the routes file to support your custom ```errors_controller```

```
DeviseDynamicErrorPages::Application.routes.draw do
  # ....
  
  dynamic_error_pages :controller => "errors"

end
```

## Limitations

At the moment, the gem will allways force :html format in the response. 
In future versions, this behaviour will be extended.  

## TODO

1. Support more formats
2. Write more tests

## Run tests

1. ```bundle install```
2. ```rake appraisal```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
