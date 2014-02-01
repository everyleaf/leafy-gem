# Leafy

Post to leafy

## Installation

Add this line to your application's Gemfile:

    gem 'leafy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install leafy

## Usage

use ruby 2.0+

```rb
require 'leafy'

client = Leafy::Client.new(room: 'sample', email: 'sample@sample.com', password: 'password')
client.post! "sample"
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/leafy/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
