class CustomersController < ApplicationController
skip_before_action :verify_authenticity_token

def new
  @customer = Customer.new
end

def create
  @customer = Customer.new
  if @customer.save
    flash[:alert] = "Your message has been received!"
  else
    render_error
  end
end

private

 def render_error
    render json: { errors: @customer.errors.full_messages },
      status: :unprocessable_entity
  end

end
