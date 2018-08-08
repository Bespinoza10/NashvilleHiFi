class Product < ApplicationRecord
  has_attached_file :smallImage, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :smallImage, content_type: /\Aimage\/.*\z/

  has_attached_file :bigImageOne, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :bigImageOne, content_type: /\Aimage\/.*\z/

  has_attached_file :bigImageTwo, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :bigImageTwo, content_type: /\Aimage\/.*\z/
end
