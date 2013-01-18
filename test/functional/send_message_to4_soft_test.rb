require 'test_helper'

class SendMessageTo4SoftTest < ActionMailer::TestCase
  test "send_message_to_gmail_group" do
    mail = SendMessageTo4Soft.send_message_to_gmail_group
    assert_equal "Send message to gmail group", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
