class CreateNeighborhood < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.references :city_id
    end
  end
end
