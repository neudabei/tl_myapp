class User < ActiveRecord::Base
  has_many :posts, foreign_key: :user_id # Do I need foreign_key here?
  has_many :memberships
  has_many :groups, through: :memberships
end
