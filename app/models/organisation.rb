class Organisation < ActiveRecord::Base
require 'roo'

    def self.import(file)
        spreadsheet = open_spreadsheet(file)
        header = spreadsheet.row(1)
    end


    def self.open_spreadsheet(file)
        my_csv = Roo::Spreadsheet.open(file.path, extension: :csv)
    end

end
