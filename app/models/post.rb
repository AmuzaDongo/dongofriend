class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :thumbnail
  has_one_attached :banner
  has_rich_text :body
  has_many :comments 

  # validates :title, length:(minimum :5);
  # validates :body, length:(minimum :30);

  self.per_page = 6
  extend FriendlyId
  friendly_id :title, use: :slugged

  def optimized_image(image,x,y)
    return image.variant(resize_to_fill: [x,y]).processed
  end
end
