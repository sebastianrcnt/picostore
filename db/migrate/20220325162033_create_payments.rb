class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :pg
      t.string :pay_method
      t.string :merchant_pid
      t.string :name
      t.integer :amount
      t.string :buyer_email
      t.string :buyer_name
      t.string :buyer_tel
      t.string :buyer_addr
      t.string :buyer_postcode
      t.string :imp_uid
      t.boolean :is_amount_validated

      t.timestamps
    end
  end
end
