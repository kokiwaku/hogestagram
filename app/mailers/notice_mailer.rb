class NoticeMailer < ApplicationMailer

  def sendmail_post(post)
    @post = post
    mail to:@post.user.email

  end

end
