class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.references :reviewer,index: true , foreign_key: true

      t.timestamps null: false
    end
  end
end
