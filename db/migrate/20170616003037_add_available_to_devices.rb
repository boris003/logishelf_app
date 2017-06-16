class AddAvailableToDevices < ActiveRecord::Migration[5.1]
  def change
    add_column :devices, :available, :boolean
  end
end
