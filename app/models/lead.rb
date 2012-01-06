class Lead < ActiveRecord::Base
  def add_another_signup!
    update_attribute(:signup_count, signup_count.to_i + 1)
  end
end
