class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name, null: false, unique: true
      t.string :email, null: false, unique: true
      t.string :password_digest, null: false

      # ADD ANY NECESSARY FOREIGN KEYS PROBS NOT THOUGH

      t.timestamps null: false
    end
  end
end
