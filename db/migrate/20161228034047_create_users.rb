class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :image
      t.integer :gender_id
      t.datetime :dob
      t.string :phone

      t.timestamps
    end
  end
end
