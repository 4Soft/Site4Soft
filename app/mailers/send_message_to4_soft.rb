class SendMessageTo4Soft < ActionMailer::Base
  default from: "boladaodeamor123@gmail.com"

  def send_message_to_gmail_group(message)
    @message = message
    mail to: "4softjr@googlegroups.com", subject: "Nova mensagem enviada pelo site"
  end
end
