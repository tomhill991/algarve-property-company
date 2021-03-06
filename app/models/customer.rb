class Customer < ApplicationRecord
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'must be a valid address' }, uniqueness: true
  validates :first_name, 
            presence: true,
            format: { with: /[a-zA-Z]/, 
                      message: 'must contain only letters'
            }
  validates :last_name, presence: true,
  format: { with: /[a-zA-Z]/, message: 'must contain only letters' }

  after_create :send_welcome_email, :send_customer_details_email

  private

  def send_welcome_email
    UserMailer.with(customer: self).welcome.deliver_now
  end

  def send_customer_details_email
    CaptureDetailsMailer.with(customer: self).customer_details.deliver_now
  end
end
