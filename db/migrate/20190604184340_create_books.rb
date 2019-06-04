class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books, id: :string do |t|
      t.string :title
      t.references :author, foreign_key: true, type: :string, index: true

      t.timestamps
    end
  end
end
