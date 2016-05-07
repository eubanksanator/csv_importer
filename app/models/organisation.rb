class Organisation < ActiveRecord::Base

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Organisation.create! row.to_hash
        end
        # spreadsheet = open_spreadsheet(file)
        # header = spreadsheet.row(1)

        # (2..spreadsheet.last_row).each do |i|
        #     row = Hash[[header, spreadsheet.row(i)].transpose]
        #     organisation = find_by_id(row["id"]) || new
        #     organisation.attributes = row.to_hash.slice(*accessible_attributes)
        #     organisation.save!
        # end
    end

end
