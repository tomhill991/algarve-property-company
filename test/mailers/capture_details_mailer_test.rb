require 'test_helper'

class CaptureDetailsMailerTest < ActionMailer::TestCase
  test "customer_details" do
    mail = CaptureDetailsMailer.customer_details
    assert_equal "Customer details", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
