class AllTablesRedone < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :group_id 
    end

    create_table :users do |t|
      t.string :username
      t.string :email 
    end

    create_table :posts do |t|
      t.string :title
      t.text :text
      t.integer :user_id
    end

    create_table :groups do |t|
      t.string :name
    end
  end
end
