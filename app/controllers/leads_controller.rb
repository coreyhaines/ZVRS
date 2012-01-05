class LeadsController < ApplicationController
  def index
    @leads = Lead.all
  end

end
