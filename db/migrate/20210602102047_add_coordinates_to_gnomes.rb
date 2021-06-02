class AddCoordinatesToGnomes < ActiveRecord::Migration[6.0]
  def change
    add_column :gnomes, :latitude, :float
    add_column :gnomes, :longitude, :float
  end
end
