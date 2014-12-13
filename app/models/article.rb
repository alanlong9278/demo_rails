class Article < ActiveRecord::Base
  # attr_accessor :title, :text
  has_many :comments, dependent: :destroy
  belongs_to :users

  validates :title, presence: true,
 					length: { minimum: 3}
end
