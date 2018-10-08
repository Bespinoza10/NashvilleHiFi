class Contact < MailForm::Base
  attribute :name,           :validate => true
  attribute :email,          :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :newsletter,   :validate => false
  attribute :message,   :validate => false
  attribute :comments,   :validate => false
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Nashville HIFI",
      :to => ['espinozab100@gmail.com'],
      :from => %("#{name}" <#{email}>)
    }
  end
end
