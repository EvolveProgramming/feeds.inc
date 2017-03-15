class Contact < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Contact.create! row.to_hash
      # company_hash = row.to_hash
    end
  end
end
