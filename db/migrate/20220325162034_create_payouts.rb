class CreatePayouts < ActiveRecord::Migration[6.1]
  def change
    create_table :payouts do |t|
      t.integer :user_id
      t.integer :amount
      t.boolean :done
      t.datetime :starts_from
      t.datetime :ends_at
      t.datetime :paid_at

      t.timestamps
    end
  end
end
