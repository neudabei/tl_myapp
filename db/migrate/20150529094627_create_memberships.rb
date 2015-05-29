class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.belongs_to :group, index: true
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end


# Or should it be (from https://github.com/XiaoA/tealeaf-precourse-2-myapp/blob/master/db/migrate/20150312041907_create_memberships.rb)

# class CreateMemberships < ActiveRecord::Migration
#   def change
#     create_table :memberships do |t|
#       t.references :user, index: true
#       t.references :group, index: true

#       t.timestamps null: false
#     end
#     add_foreign_key :memberships, :users
#     add_foreign_key :memberships, :groups
#   end
# end