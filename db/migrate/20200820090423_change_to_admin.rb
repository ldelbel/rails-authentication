class ChangeToAdmin < ActiveRecord::Migration[5.2]
  def change
    connection.execute("PRAGMA defer_foreign_keys = ON")
    connection.execute("PRAGMA foreign_keys = OFF")
    rename_column :users, :member, :admin 
    connection.execute("PRAGMA foreign_keys = ON")
    connection.execute("PRAGMA defer_foreign_keys = OFF")
    change_column :users, :admin, :boolean, default: false
  end
end
