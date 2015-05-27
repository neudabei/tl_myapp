class User < ActiveRecord::Base
  has_many :groups
  has_many :posts, through: :groups
end
