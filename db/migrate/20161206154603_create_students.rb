class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :name
      t.string :period
      t.datetime :date_birth
      t.references :religion
      t.string :responsible_one_name
      t.datetime :responsible_one_birth_date
      t.string :responsible_one_email
      t.string :responsible_one_rg
      t.string :responsible_one_cpf
      t.integer :responsible_one_number_children
      t.string :responsible_one_workplace
      t.references :responsible_one_profession
      t.string :responsible_one_phone
      t.string :responsible_one_cell_phone
      t.string :responsible_one_contact
      t.string :responsible_two_name
      t.datetime :responsible_two_birth_date
      t.string :responsible_two_email
      t.string :responsible_two_rg
      t.string :responsible_two_cpf
      t.integer :responsible_two_number_children
      t.string :responsible_two_workplace
      t.references :profession, index: true
      t.string :responsible_two_phone
      t.string :responsible_two_cell_phone
      t.string :responsible_two_contact
      t.string :addresses
      t.integer :number
      t.references :neighborhood
      t.references :city
      t.string :zip_code
      t.string :phones
      t.string :people_allowed_search_child
      t.string :fever_case
      t.string :obs

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
