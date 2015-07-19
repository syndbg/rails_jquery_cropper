# RailsJqueryCropper

## Requirements

* rails 4 or newer
* jquery-rails


## Installation

### Add to your Gemfile

`gem 'rails_jquery_cropper'`


### Add to your `application.css`

`*= require cropper`

### Add to your `application.js`

`//= require cropper`

### bundle install !


## Contributing

## Found a bug or you'd like to add a feature:

* Fork the repo
* Clone *your* fork `https://github.com/YOUR_USERNAME/rails_jquery_cropper.git`
* Create a new branch `pull-request-name`
* Run the one and only unit test `rake test`
* Run the app server in `test/dummy` (`bundle install && cd test/dummy && rails s`)
* Go in your browser to '/' and confirm that everything is working or you can reproduce a bug you found
* Now you can start coding your feature/fix!
* Submit a PR in the end

### jQuery Cropper is out-of-date?

* Follow the steps in `Found a bug or you'd like to add a feature` until running the unit test
* Run `rake update` which will download the latest CSS and JS of jQuery Cropper and place it in `vendor/assets/`

If you're not in a hurry (means you can wait 1-2 days at most)
* Commit, push and submit a PR.


If you're in a hurry and need the updated jQuery Cropper ASAP:
* Push your updated fork.
* Modify Gemfile rails_jquery_cropper line like this `gem 'rails_jquery_cropper', github:'YOUR_USERNAME/rails_jquery_cropper', branch: 'your-branch'`
