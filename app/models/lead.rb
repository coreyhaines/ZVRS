class Lead < ActiveRecord::Base
  def add_another_signup!
    self.signup_count ||= 0
    self.signup_count += 1
    self.save
  end
end
