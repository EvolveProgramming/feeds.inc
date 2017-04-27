class AddPictureToParties < ActiveRecord::Migration[5.0]
  def change
    add_column :parties, :picture, :string
  end
end
