require File.expand_path(File.dirname(__FILE__) + '/../../../lib/resque-honeybadger')

describe Resque::Failure::Honeybadger do
  it 'sends the exception to honeybadger' do
    exception = RuntimeError.new('boom!')
    queue     = 'test'
    worker    = Resque::Worker.new(:test)
    payload   = {'class' => Object, 'args' => 23}
    Honeybadger.should_receive(:notify).with(
      exception,
      context: {queue: queue},
      parameters: {payload_class: 'Object', payload_args: '23'},
      cgi_data: ENV
    )
    backend = Resque::Failure::Honeybadger.new(exception, worker, queue, payload)
    backend.save
  end
end