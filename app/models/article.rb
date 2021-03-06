class Article < ActiveRecord::Base
  # attr_accessor :title, :text
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
 					length: { minimum: 3}
end
