class CreateShows < ActiveRecord::Migration[5.2]
    def change 
        create_table :shows do |r|
            r.text :name
            r.string :day
            r.text :network
            r.integer :rating
    end
   end
end