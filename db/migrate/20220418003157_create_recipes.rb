class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :protein1
      t.string :protein2
      t.string :protein3
      t.string :protein4
      t.string :protein5
      t.string :veg1
      t.string :veg2
      t.string :veg3
      t.string :veg4
      t.string :veg5
      t.string :starch1
      t.string :starch2
      t.string :starch3
      t.string :starch4
      t.string :starch5
      t.string :oils1
      t.string :oils2
      t.string :oils3
      t.string :oils4 
      t.string :oils5
      t.string :aromatics1
      t.string :aromatics2
      t.string :aromatics3
      t.string :aromatics4
      t.string :aromatics5
      t.timestamps
    end
  end
end
