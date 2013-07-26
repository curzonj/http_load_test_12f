# config.ru

use Rack::CommonLogger
use Rack::ContentLength
use Rack::Chunked

unless ENV['RACK_ENV'] == 'production'
  use Rack::ShowExceptions
  use Rack::Lint
end

run Proc.new {|env| [200, {"Content-Type" => "text/html"}, [ "Hello Rack!" ] ]}
