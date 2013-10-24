class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
    remove_column :users, :passwor_digest, :string
  end
end