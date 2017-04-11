class AddSummaryToEntries < ActiveRecord::Migration[5.0]
  def change
  	add_column :entries, :summary, :text
  end
end
