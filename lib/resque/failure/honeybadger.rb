require 'resque'
require 'honeybadger'

module Resque
  module Failure
    class Honeybadger < Base
      VERSION = '0.1.0'

      def save
        ::Honeybadger.notify(exception,
          context: {
            queue: queue
          },
          cgi_data: ENV,
          parameters: {
            payload_class: payload['class'].to_s,
            payload_args: payload['args'].inspect
          }
        )
      end
    end
  end
end