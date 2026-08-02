module RALAI2
end

require_relative "core/version"
require_relative "config"
require_relative "core/loader"

RALAI2::Loader.load!

app = RALAI2::Application.new
app.start

puts "==========================="
puts "RAL AI #{RALAI2::VERSION}"
puts "READY"
puts "==========================="