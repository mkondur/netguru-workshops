class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates :description, :title, presence: true
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }

  def average_rating
    reviews.average(:rating)
  end

  def owner?(some_user)
    user == some_user
  end
end
