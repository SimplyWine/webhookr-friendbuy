# Webhookr::Friendbuy
[![Dependency Status](https://gemnasium.com/zoocasa/webhookr-friendbuy.png)](https://gemnasium.com/zoocasa/webhookr-friendbuy)

This gem is a plugin for [Webhookr](https://github.com/zoocasa/webhookr) that enables
your application to accept [webhooks from Friendbuy](https://support.friendbuy.com/entries/20743117-HTTP-POST-Data-Destination).

## Installation

Add this line to your application's Gemfile:

    gem 'webhookr-friendbuy'

Or install it yourself:

    $ gem install webhookr-friendbuy

## Usage

Once you have the gem installed run the generator to add the code to your initializer.
An initializer will be created if you do not have one.

```console
rails g webhookr:friendbuy:init *initializer_name* -s
```

Run the generator to create an example file to handle Friendbuy webhooks.

```console
rails g webhookr:friendbuy:example_hooks
```

Or create a Friendbuy handler class for any event that you want to handle. For example
to handle unsubscribes you would create a class as follows:

```ruby
class FriendbuyHooks
  def on_event(incoming)
    # Your custom logic goes here.

  end
end
```

For a complete list of events, and the payload format, see below.

Edit config/initializers/*initializer_name* and change the commented line to point to
your custom Friendbuy event handling class. If your class was called *FriendbuyHooks*
the configuration line would look like this:

```ruby
  Webhookr::Friendbuy::Adapter.config.callback = FriendbuyHooks
```

To see the list of Friendbuy URLs for your application can use run the provided webhookr rake task:

```console
rake webhookr:services
```

Example output:

```console
friendbuy:
  GET	/webhookr/events/friendbuy/19xl64emxvn
  POST	/webhookr/events/friendbuy/19xl64emxvn
```

## Friendbuy Events & Payload

### Events

All webhook events are supported. 

<table>
  <tr>
    <th>Friendbuy Event</th>
    <th>Event Handler</th>
  </tr>
  <tr>
    <td>event</td>
    <td>on_event(incoming)</td>
  </tr>
</table>

### Payload

The payload is the full payload data converted to an OpenStruct
for ease of access. 

```ruby
  incoming.payload

```

### <a name="supported_services"></a>Supported Service - Friendbuy

* [http://apidocs.friendbuy.com/webhooks/](Friendbuy)

## <a name="works_with"></a>Works with:

webhookr-friendbuy works with Rails 3.1, 3.2 and 4.0, and has been tested on the following Ruby
implementations:

* 1.9.3
* 2.0.0
* jruby-19mode

### Versioning
This library aims to adhere to [Semantic Versioning 2.0.0](http://semver.org/). Violations of this scheme should be reported as
bugs. Specifically, if a minor or patch version is released that breaks backward compatibility, that
version should be immediately yanked and/or a new version should be immediately released that restores
compatibility. Breaking changes to the public API will only be introduced with new major versions. As a
result of this policy, once this gem reaches a 1.0 release, you can (and should) specify a dependency on
this gem using the [Pessimistic Version Constraint](http://docs.rubygems.org/read/chapter/16#page74) with
two digits of precision. For example:

    spec.add_dependency 'webhookr-friendbuy', '~> 1.0'

While this gem is currently a 0.x release, suggestion is to require the exact version that works for your code:

    spec.add_dependency 'webhookr-friendbuy', '0.0.1'

## License

webhookr-friendbuy is released under the [MIT license](http://www.opensource.org/licenses/MIT).

## Author

Adapted from webhookr-mailchimp by 
* [Gerry Power](https://github.com/gerrypower)
