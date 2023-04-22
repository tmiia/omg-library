class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.datetime :created
      t.references :author, null: false, foreign_key: { to_table: :authors }
      t.references :ref_to, null: false, foreign_key: { to_table: :books }

      t.timestamps
    end
  end
end
