require 'test_helper'

class NoticeMailerTest < ActionMailer::TestCase
  test "sendmail_POST" do
    mail = NoticeMailer.sendmail_POST
    assert_equal "Sendmail post", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
