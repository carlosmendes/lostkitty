class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :address
      t.string :category
      t.date :found_on

      t.timestamps null: false
    end
  end
end
