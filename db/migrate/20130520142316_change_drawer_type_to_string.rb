class ChangeDrawerTypeToString < ActiveRecord::Migration
  def up
  	change_column :pieces, :drawer, :string
  end

  def down
  	change_column :pieces, :drawer, :integer
  end
end
