class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :composer
      t.integer :drawer
      t.integer :number

      t.timestamps
    end
  end
end
