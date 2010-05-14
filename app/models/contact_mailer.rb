class ContactMailer < ActionMailer::Base
  

  def message(message)
    subject    message.subject
    body       :message => message
    recipients CONTACT_RECIPIENT
    cc         CONTACT_CC
    from       message.email
    sent_on    Time.now
end

end
