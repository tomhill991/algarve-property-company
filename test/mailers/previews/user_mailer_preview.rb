# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def welcome
    customer = Customer.first
    # This is how you pass value to params[:user] inside mailer definition!
    UserMailer.with(customer: customer).welcome.deliver_now
  end
end
