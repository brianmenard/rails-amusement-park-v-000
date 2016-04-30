class CreateUsers < ActiveRecord::Migration
  create_table :users do |t|
    t.string :name
    t.integer :happiness
    t.integer :tickets
    t.integer :height
    t.integer :nausea
    t.boolean :admin, default: false
    t.datetime :created_at
    t.datetime :updated_at
  end
end
