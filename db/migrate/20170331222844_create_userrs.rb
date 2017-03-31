class CreateUserrs < ActiveRecord::Migration[5.0]
  def change
    create_table :userrs do |t|
      t.string :name
      t.string :uid
      t.string :avatar_url

      t.timestamps
    end
    add_index :userrs, :uid
  end
end
