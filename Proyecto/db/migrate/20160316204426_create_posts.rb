class CreatePosts < ActiveRecord::Migration
  def change

    create_table :posts do |t|
      t.string :sangre
      t.text :comentario
      t.boolean :solved
      t.integer :usuario_id
      t.references :usuarios, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
