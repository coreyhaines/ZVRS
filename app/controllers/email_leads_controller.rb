class EmailLeadsController < ApplicationController
  def index
    @leads = Lead.all
    
    respond_to do |format|
      format.html
      format.json { render :json => @leads.to_json}
    end    
  end

  def new
    @lead = Lead.new
    
  end
  
  def create
    lead = Lead.create params[:lead]
    redirect_to lead_url(lead)
   # @lead.save
    #redirect_to @lead
    #render :text => "Thanks for showing interest, interested@example.com. You will be spamed"
  end
  
  def show
    @lead = Lead.find(params["id"])
  end
end
