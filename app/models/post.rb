class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_attached_file :image,
                    styles: { medium: '500x500', thumb: '300x300'},
                    default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, 
                    content_type: ['image/jpeg', 'image/png']
  validates :user_id, presence: true
  validates :caption, presence: true,
  					length: {minimum:3, maximum: 60}
  validates :image, presence: true

end
