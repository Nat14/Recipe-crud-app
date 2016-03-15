class RemoveColumnFromRecipe < ActiveRecord::Migration
  def change
    remove_column :recipes, :cook_time, :time
  end
end
