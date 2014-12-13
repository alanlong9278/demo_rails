class User < ActiveRecord::Base
  validates :username, :presence => true
  validates :password, :presence => true
  validates :email, :email => true
  
  has_many :articles, :dependent => :destroy
end
