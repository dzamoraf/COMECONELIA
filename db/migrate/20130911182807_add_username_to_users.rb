class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :usuarios, :username, :string, :after => :email
    add_index :usuarios, :username, unique: true
  end
end
