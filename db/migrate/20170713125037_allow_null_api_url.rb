class AllowNullApiUrl < ActiveRecord::Migration[5.1]
  def change
    change_column :spots, :api_url, :string, null: :true
  end
end
