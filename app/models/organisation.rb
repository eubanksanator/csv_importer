class Organisation < ActiveRecord::Base
    require 'csv'

    def self.import(imported_file)
        input_path = imported_file.path
        CSV.foreach(input_path, headers: true) do |row|
            name   = row[0]
            street = row[1]
            city   = row[2]
            state  = row[3]

            Organisation.create(name: name, street: street, city: city, state: state)
        end
    end
end
