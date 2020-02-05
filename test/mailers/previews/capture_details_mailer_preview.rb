# Preview all emails at http://localhost:3000/rails/mailers/capture_details_mailer
class CaptureDetailsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/capture_details_mailer/customer_details
  def customer_details
    customer = Customer.first
    CaptureDetailsMailer.with(customer: customer).customer_details
  end

end
