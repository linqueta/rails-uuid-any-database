class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors, id: :string do |t|
      t.string :name

      t.timestamps
    end
  end
end
