class Contact < ApplicationRecord

  
  attribute :name,           :validate => true
  attribute :email,          :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :number_of_guest,   :validate => true
  attribute :newsletter,   :validate => false
  attribute :message,   :validate => false
  attribute :comments,   :validate => false
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Nashville HIFI",
      :to => ['espinozab100@gmail.com'],
      :from => %("#{guest_name}" <#{email}>)
    }
  end
end
