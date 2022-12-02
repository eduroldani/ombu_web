class AddFirstNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :is_admin, :boolean, default: false
    add_column :users, :is_teacher, :boolean, default: false
    add_column :users, :is_student, :boolean, default: true
    add_column :users, :location, :string
    add_column :users, :phone, :string
    add_column :users, :other_email, :string

  end
end
