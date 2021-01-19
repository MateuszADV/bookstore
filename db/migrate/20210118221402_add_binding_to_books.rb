class AddBindingToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :binding, :string
  end
end
