class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :note
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
