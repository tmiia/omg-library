class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :summary
      t.string :quote
      t.text :cover
      t.references :author, null: false, foreign_key: { to_table: :authors }
      t.references :type, null: false, foreign_key: { to_table: :types }
      t.references :owner, null: false, foreign_key: { to_table: :users }
      t.references :reader, null: false, foreign_key: { to_table: :users }
      t.datetime :created

      t.timestamps
    end
  end
end
