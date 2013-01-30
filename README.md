## What

Failure backend for sending exceptions that occur in [resque](https://github.com/defunkt/resque) to [honeybadger.io](https://honeybadger.io).

## Usage

In your resque config, you'll probably want to use the `Resque::Multiple` failure class, and add `Resque::Failure::Honeybadger` to that:

```ruby
Resque::Failure::Multiple.classes = [Resque::Failure::Redis, Resque::Failure::Honeybadger]
Resque::Failure.backend = Resque::Failure::Multiple
```

There is no additional configuration you need to do for honeybadger, assuming you already have honeybadger configured in your project. [See the honeybadger gem installation instructions](https://github.com/honeybadger-io/honeybadger-ruby#rails-installation) for getting that set up.