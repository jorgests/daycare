class CreateReligion < ActiveRecord::Migration
  def self.up
    create_table :religions do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :religions
  end
end
