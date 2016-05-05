class Organisation < ActiveRecord::Base

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            header =
            Organisation.create! row.to_hash
    end
end
