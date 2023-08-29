class CreateUserAuthenticates < ActiveRecord::Migration[6.1]
  def change
    create_table :user_authenticates do |t|
      t.string :username
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
