class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews
  has_many :products

  validates :first_name, :last_name, presence: true

  def recently_reviews
    reviews.order(id: :desc).limit(5)
  end
end
