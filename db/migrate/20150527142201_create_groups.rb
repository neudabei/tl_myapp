class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :user_id
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
