class CreateGnomes < ActiveRecord::Migration[6.0]
  def change
    create_table :gnomes do |t|
      t.string :name
      t.string :power
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
