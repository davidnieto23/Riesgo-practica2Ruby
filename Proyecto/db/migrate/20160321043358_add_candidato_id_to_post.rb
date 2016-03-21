class AddCandidatoIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :candidato_id, :integer
  end
end
