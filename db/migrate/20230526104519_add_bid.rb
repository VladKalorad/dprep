class AddBid < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :bid, :boolean, dedaulf: false
  end
end
