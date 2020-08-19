class ChangeMemberToAdmin < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :member, :admin
    change_column :users, :admin, :boolean, default: true
  end
end
