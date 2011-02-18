# Classify

Converts strings into constants using Ruby.

Something similar to Rails' [classify](http://api.rubyonrails.org/classes/ActiveSupport/Inflector.html#method-i-classify) method.

## How do use
    
    require 'rubygems'
    require 'classify'
    
    >> class MyRandomString; end
    >> Classify.it!("my_random_string")
    => MyRandomString
    
## How do install

    [sudo] gem install classify
    
## How to use it in a rails 3 project

Add `gem 'classify'` to your Gemfile and run `bundle`.

## How to help

- Start by copying the project or make your own branch.
- Navigate to the root path of the project and run `bundle`.
- Start by running all tests using rspec, `rspec spec/classify_spec.rb`.
- Implement your own code, write some tests, commit and do a pull request.

## Requirements

Classify is tested in OS X 10.6.6 using Ruby 1.8.7 and 1.9.2.