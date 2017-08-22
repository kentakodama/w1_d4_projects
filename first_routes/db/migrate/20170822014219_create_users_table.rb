class CreateUsersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t| #this must be the plural version of the class name in lower case 
      t.string :name
      t.string :email
    end
  end
end
