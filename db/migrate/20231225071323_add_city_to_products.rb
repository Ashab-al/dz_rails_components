class AddCityToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :city, :string
  end
end
