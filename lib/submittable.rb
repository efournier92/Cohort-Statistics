module Submitting

  def submittable?
    submittable = false
    if self.class == Challenge
      submittable = true
    elsif self.class = SystemCheck
      submittable = true
    end
    submittable
  end
  
end
