# this file loads a fake ui, used for unit testing
require 'osx/cocoa'  # this is used for constants and such, we should get rid of it for testing

require 'fakeui/outline_view'
require 'fakeui/tab_view'
require 'fakeui/table_view'
require 'fakeui/text_field'
require 'fakeui/text_view'
require 'fakeui/window'

# this should be mocked out in tests, if it's not, it should barf, like so...
module Kernel
  def alert(message, options = {})
    raise message
  end
end

class Array
  def to_range
    self
  end
end
