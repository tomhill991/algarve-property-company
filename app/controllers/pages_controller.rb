class PagesController < ApplicationController
  def home
    @customer = Customer.new
  end

  def privacy_policy
    render template: 'pages/privacy_policy'
  end
end
