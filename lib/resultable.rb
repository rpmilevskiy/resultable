require "resultable/version"
require "resultable/result"

module Resultable
  attr_accessor :result

  def initialize
    self.result = Resultable::Result.new
  end
end
