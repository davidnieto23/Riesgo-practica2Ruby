class AddDonacionIdToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :donacion_id, :integer
    add_column :usuarios, :references, :post
  end
end
