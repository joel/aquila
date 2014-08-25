# Aquila Vault

[![Code Climate](https://codeclimate.com/github/joel/aquila.png)](https://codeclimate.com/github/joel/aquila)

[![Dependency Status](https://gemnasium.com/joel/aquila.png)](https://gemnasium.com/joel/aquila)

[![Build Status](https://travis-ci.org/joel/aquila.png?branch=master)](https://travis-ci.org/joel/aquila) (Travis CI)

[![Coverage Status](https://coveralls.io/repos/joel/aquila/badge.png)](https://coveralls.io/r/joel/aquila)

Aquila is a simple rails app that allows you to share passwords, notes with your team like [Roswell](https://github.com/blahed/roswell) or like another awesome project [Swordfish](https://github.com/github/swordfish)

You can play with [demo](http://demo.vaultypass.com/) demo@example.com / secret

or simply use it on [vaultypass.com](http://www.vaultypass.com/)

<img src="https://cloud.githubusercontent.com/assets/5789/4032621/f25ffa20-2c71-11e4-82ee-2680f4afaa54.png" alt="ScreenShot" style="height: 400px; width: 600px;"/>

## Features

* Simple web accounts

## Is it secure?

Not extremely secure, but more secure than a shared google spreadsheet. The `production` environment requires SSL, this is to ensure that cleartext passwords aren't sent/received over the wire.

## How can it be more secure?

Really, we just needed something better than a spreadsheet.

## Installing Aquila

Aquila is just a rails app so clone it down somewhere and:

    > bundle              # install gem dependencies

Then just start your choice of server (you'll wanna put it behind SSL).

## Create & configure for Heroku

	> gem install heroku
	> heroku create example-aquila --stack cedar
	> heroku addons:add mongolab:starter
	> git push heroku master

## Dependencies

* Ruby 2.1
* MongoDB

## Testing

  RAILS_ENV=test bundle exec rspec spec

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
