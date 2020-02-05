class CaptureDetailsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.capture_details_mailer.customer_details.subject
  #
  def customer_details
    @customer_details = params[:customer]
    mail(
      to: 'welcome@thealgarvepropertycompany.com',
      subject: "New customer - #{@customer_details.first_name} #{@customer_details.last_name}"
    )
  end
end
