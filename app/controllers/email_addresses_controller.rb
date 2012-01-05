class EmailAddressesController < ApplicationController
  def index
    @addresses = EmailAddress.all
  end

end
