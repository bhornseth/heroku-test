require 'rack'

use Rack::Reloader, 0
use Rack::ContentLength

app = proc do |env|
  [ 200, {'Content-Type' => 'text/plain'}, ["Futuristic Ruby Version! Request-Id=#{env['HTTP_X_REQUEST_ID']}"] ]
end

run app
