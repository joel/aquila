# Aquila

[![Code Climate](https://codeclimate.com/github/joel/aquila.png)](https://codeclimate.com/github/joel/aquila)

![Semaphore](https://semaphoreapp.com/api/v1/projects/5c562530197d4298ebd093cd7a997d3a0864a65d/103878/shields_badge.png)

Aquila is a simple rails app that allows you to share passwords, notes with your team like [Roswell](https://github.com/blahed/roswell)

Please use it on [vaultypass.com](http://www.vaultypass.com/)

### Features

* Simple web accounts

### How secure is Aquila it?

Not extremely secure, but more secure than a shared google spreadsheet. The `production` environment requires SSL, this is to ensure that cleartext passwords aren't sent/received over the wire.

### How can it be more secure?

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

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request