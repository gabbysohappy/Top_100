class AddNameAndRoleToAdmins < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :name, :string
    add_column :admins, :role, :string
  end
end
