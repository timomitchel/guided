class AddDeviseHelpersToUsers < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email
      t.integer  :failed_attempts, default: 0, null: false
      t.string   :unlock_token
      t.datetime :locked_at
      t.timestamps null: false
    end
    add_index :users, :confirmation_token,  unique: true
    add_index :users, :unlock_token,        unique: true
  end
end
