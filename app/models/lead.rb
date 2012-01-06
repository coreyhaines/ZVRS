class Lead < ActiveRecord::Base

  def add_another_signup!
    update_attribute :signups, signups.to_i + 1
    # signups += 1
  end





  def referral_key
    id
  end
  
  def self.find_by_referral_key(key)
    find_by_id key
  end

end