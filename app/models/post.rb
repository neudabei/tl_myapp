class Post < ActiveRecord::Base
  belongs_to :user, foreign_key: :user_id # Do I need foreign key here?
end
