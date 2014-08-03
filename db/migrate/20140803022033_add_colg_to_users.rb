class AddColgToUsers < ActiveRecord::Migration
  def change
    add_column :users, :colg, :string
  end
end
