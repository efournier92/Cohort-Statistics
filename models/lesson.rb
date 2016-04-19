require_relative 'submittable.rb'

class Lesson
  attr_accessor :name, :body
  include Submitting

  def initialize
    @name = ''
    @body = ''
  end

end
