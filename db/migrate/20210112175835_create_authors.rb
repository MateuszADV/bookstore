class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :last_name
      t.integer :century
      t.text :body

      t.timestamps
    end
  end
end
