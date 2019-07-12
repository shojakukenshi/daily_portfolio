class ProfileTable < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.text :introduction
      t.string :image
      t.timestamps
      t.index :user_id
    end

    add_index :posts, [:user_id]
  end
end
