class AddInformationToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :mass, :string, null:true
    add_column :products, :country, :string, null:true
    add_column :products, :recommendation, :string, null:true
  end
end
