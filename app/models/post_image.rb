class PostImage < ApplicationRecord

  belongs_to :user

  has_many :post_comments, dependent: :destroy

  attachment :image

  validates :image, presence: true
  validates :spot_name, presence: true, length: { maximum: 20 }
  validates :island_name, presence: true, length: { maximum: 20 }
  validates :caption, length: { maximum: 200 }

end
