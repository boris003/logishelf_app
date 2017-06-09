class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :manufacturer
      t.string :model
      t.string :os_version
      t.integer :screen
      t.boolean :active
      t.string :phone_number
      t.boolean :ios
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end
