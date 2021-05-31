class AddAddressToGnome < ActiveRecord::Migration[6.0]
  def change
    add_column :gnomes, :address, :string
  end
end
