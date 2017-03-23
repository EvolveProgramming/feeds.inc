class Contact < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Contact.create! row.to_hash
    end
  end

  # downloading contacts data to csv method
  def self.to_csv
    CSV.generate do |csv|
    csv << column_names
    all.each do |contact|
      csv << contact.attributes.values_at(*column_names)
    end
   end
  end
end
