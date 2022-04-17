class CreateRecipe1s < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe1s do |t|
      t.string :protein, array: true, default: []
      t.string :veg, array: true, default: []
      t.string :starch, array: true, default: []
      t.string :oils, array: true, default: []
      t.string :aromatics, array: true, default: []
      t.timestamps
    end
  end
end
