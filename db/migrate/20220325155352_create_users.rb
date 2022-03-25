class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_hash
      t.boolean :is_email_verified
      t.integer :authentication_strategy_type
      t.string :payback_bank
      t.string :payback_bank_account
      t.integer :balance

      t.timestamps
    end
  end
end
