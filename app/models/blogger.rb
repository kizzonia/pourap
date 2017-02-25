class Blogger < ApplicationRecord
  has_attached_file :thumbnail, styles: { large: "1200x1000#", medium: "600x500#" }
validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/
s3_region: ENV.fetch('AWS_REGION')
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
