class UserMailer < ApplicationMailer
  def welcome
    @customer = params[:customer] # Instance variable => available in view
    mail(
      to: @customer.email,
      subject: 'Thank you for contacting The Algarve Property Company'
    )
    # This will render a view in `app/views/user_mailer`!
  end
end
