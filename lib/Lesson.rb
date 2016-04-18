# For Exceeds Expecations
require_relative "submittable.rb"
class Lesson

  include Submitting

  attr_accessor :name, :body

  def initialize
    @name = ""
    @body = ""
  end

end
