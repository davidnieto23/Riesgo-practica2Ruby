class AddDonadorToPost < ActiveRecord::Migration
  def change
    add_column :posts, :donador_id, :integer
  end
end
