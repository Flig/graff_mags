class ContactForm < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :message

  attribute :subscribe

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "New Message on GraffMags.com",
      :to => "samuelkleimandesign@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
