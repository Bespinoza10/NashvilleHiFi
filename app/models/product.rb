class Product < ApplicationRecord
  has_attached_file :small_img, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "assets/images/:style/missing.png"
  validates_attachment_content_type :small_img, content_type: /\Aimage\/.*\z/

  has_attached_file :big_img_one, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "assets/images/:style/missing.png"
  validates_attachment_content_type :big_img_one, content_type: /\Aimage\/.*\z/

  has_attached_file :big_img_two, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "assets/images/:style/missing.png"
  validates_attachment_content_type :big_img_two, content_type: /\Aimage\/.*\z/
end
