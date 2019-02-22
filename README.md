## General Information
Contains Classes and its methods to create a deck of 52 cards, shuffle, count and deal. 


## Project Structure
       sample_card
          lib
            deck.rb       -> Contains Classes Deck and Card
          test
            deck_test.rb -> Contains unit tests for Deck and Card methods
          Gemfile        -> Contains information about gem required as dependencies     
          Gemfilelock
          Rakefile       -> Contains task to run the deck_test.rb
          README.md       
              

## Required software
In order to run these tests, you need:

* ruby ver 2.4 or above

 **Note**: Refer to (https://www.ruby-lang.org/en/documentation/installation/) for installing ruby 
 
After installing Ruby need to installing the following versions of gem

       bundle version v1.16.1
       minitest version v5.3.5
       rake v12.3.1

Issue the command `gem install bundler`

After successful installation of bundler gem, bundler can be used to pull the other dependencies like "rake" and minitest

Issue the command `bundle install` this should bring in the required gems as specified in the Gemfile

In case if encountered the following issue "Retrying fetcher due to error (2/4): Bundler::HTTPError Could not fetch specs from https://rubygems.org/" then need to manually install the gems.
 
Use the same versions of the gem as specified in the Gemfile of the project to manually download them.


 **Note**: Refer to (https://rubygems.org/search?utf8=%E2%9C%93&query=bundle) for installing the bundle gem manually
 
 **Note**: Refer to (https://rubygems.org/search?utf8=%E2%9C%93&query=minitest) for installing the minitest gem manually
 
 **Note**: Refer to (https://rubygems.org/search?utf8=%E2%9C%93&query=rake) for installing the rake gem manually
 
 **Note**: Refer to (https://guides.rubygems.org/what-is-a-gem/) for additional information about what gems are?
   

## Executing tests

cd into the working directory

Issue the commands:
 
`bundle`

`bundle exec rake`

The above command will run the deck_test unit tests.

  **Note**: Ignore the ruby warning messages
