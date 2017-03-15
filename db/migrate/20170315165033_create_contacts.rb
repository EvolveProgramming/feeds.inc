class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :category
      t.string :section
      t.string :website
      t.string :email
      t.string :mail
      t.string :street
      t.string :tel
      t.string :fax
      t.timestamps
    end
  end
end
