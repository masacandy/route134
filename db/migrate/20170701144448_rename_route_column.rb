class RenameRouteColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :routes, :transpotation, :transportation
    rename_column :routes, :opens, :visitation
  end
end
