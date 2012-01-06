class Lead < ActiveRecord::Base

  def add_another_signup!
    update_attribute :signups, signups.to_i + 1
    # signups += 1
  end
  
  # def signups
  #   5
  # end
end