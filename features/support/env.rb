require 'cucumber'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'rspec'
require 'json_matchers/rspec'

JsonMatchers.schema_root = 'features/schemas/'
