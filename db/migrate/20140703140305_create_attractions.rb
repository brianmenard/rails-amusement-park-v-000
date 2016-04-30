class CreateAttractions < ActiveRecord::Migration
 create_table :attractions do |t|
   t.string :name
   t.integer :tickets
   t.integer :nausea_rating
   t.integer :happiness_rating
   t.integer :min_height
   t.datetime :created_at
   t.datetime :updated_at
 end
end
