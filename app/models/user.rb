class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :post_images, dependent: :destroy
  has_many :post_comments, dependent: :destroy

  attachment :profile_image

  validates :name, presence: true, uniqueness: true, length: { in: 2..10 }
  validates :introduction, length: { maximum: 100 }

  ratyrate_rater
end
