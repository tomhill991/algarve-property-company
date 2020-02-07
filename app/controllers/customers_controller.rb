class CustomersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      # uncomment below and remove after_create from model if you want to send an email after user is created in console OR through form
      # mail = UserMailer.with(customer: @customer).welcome
      # mail.deliver_now
      render template: 'pages/_thank-you'
    else
      render template: 'customers/new'
    end
  end

  def privacy_policy
    render template: 'pages/privacy_policy'
  end

  private

  def render_error
    render json: {
      errors: @customer.errors.full_messages
    }, status: :unprocessable_entity
  end

  def customer_params
    params.require(:customer).permit(
      :first_name, :last_name, :email, :budget, :comments
    )
  end
end
