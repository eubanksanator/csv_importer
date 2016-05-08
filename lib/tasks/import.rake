require 'csv'

namespace :import do

    desc "import contacts from csv"
    task contacts: :environment do
        filename = File.join Rails.root, 'orgs_50.csv'
        CSV.foreach(filename, headers: true) do |row|
            puts row[0]
            puts row[1]
            puts row[2]
            puts row[3]
        end
    end
end
