class EmailLeadsController < ApplicationController
  def index
    @leads = Lead.all
    
    respond_to do |format|
      format.html
      format.json { render :json => @leads.to_json}
    end    
  end


end
