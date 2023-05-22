class AddInformationToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone, :string, null:true
    add_column :users, :city, :string, null:true
    add_column :users, :street, :string, null:true
    add_column :users, :house, :string, null:true
    add_column :users, :flat_number, :integer, null:true
  end
end
