class AddWriternameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :writername, :string
  end
end
