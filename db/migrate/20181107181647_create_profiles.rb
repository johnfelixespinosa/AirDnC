class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.text :greeting
      t.text :about_me
      t.string :phone_number


      t.timestamps
    end
  end
end
