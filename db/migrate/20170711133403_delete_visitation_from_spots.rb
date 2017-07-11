class DeleteVisitationFromSpots < ActiveRecord::Migration[5.1]
  def change
    remove_column :routes, :visitation
  end
end
