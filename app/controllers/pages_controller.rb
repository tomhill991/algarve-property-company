class PagesController < ApplicationController
  def home
    @customer = Customer.new
    @customer.save
  end
end
