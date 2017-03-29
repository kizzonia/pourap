Searchkick.client = Elasticsearch::Client.new(hosts: ENV.fetch['RAILS_ENV'], retry_on_failure: true, transport_options: {request: {timeout: 250} })
