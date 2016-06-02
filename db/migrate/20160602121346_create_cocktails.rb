class CreateCocktails < ActiveRecord::Migration
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :dose_id

      t.timestamps null: false
    end
  end
end
