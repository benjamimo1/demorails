require 'test_helper'

class MailerMailerTest < ActionMailer::TestCase
  test "new_sign_up" do
    mail = MailerMailer.new_sign_up
    assert_equal "New sign up", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
