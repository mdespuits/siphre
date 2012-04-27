# Siphre

`Siphre` is a collection of ciphers ranging from basic to advanced for securing information.

**Disclaimer:** _These ciphers are here for you to learn about cryptography and potentially create your own ciphers for your own security. I do *not* claim any responsibility if any information is compromised even when encoded by one of these ciphers._

## Installation

Add this line to your application's Gemfile:

    gem 'siphre'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install siphre

## Usage

Using `Siphre` is simple. Say for example you wanted to encode `string` using the `Basic` Siphre.

    Siphre::Basic.encode 'string'
    => 'some-encoded-string'

To check if a siphred string is equal to a plaintext string.

    Siphre::Basic.equal 'some-encoded-string', 'string'
    => true

To decode a string, you would use a similar method.

    Siphre::Basic.decode 'some-encoded-string'
    => 'string'

**Note**: while decoding is intentionally required as part of the library, it is __highly__ recommended that you __not__ use it in any production code as it may create a potential security breach.

You may also pass options to the encode method which are defined in the documentation for each siphre.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b cool-new-siphre`)
3. Commit your changes (`git commit -am 'Added some siphre'`)
4. Push to the branch (`git push origin cool-new-siphre`)
5. Create new Pull Request
