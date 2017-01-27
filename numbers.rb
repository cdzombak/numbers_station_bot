# encoding: UTF-8
# spaces:2

require 'require_relative'
require 'twitter'
require_relative 'twitter_init'

def generate_letters()
  charset = Array('A'..'Z')
  Array.new(2) { charset.sample }.join
end

code = generate_letters() + ' ' + ('%02i' % Random.rand(99)) + ' ' + ('%02i' % Random.rand(99)) + ' ' + ('%02i' % Random.rand(99))

twitter_client.update(code)
