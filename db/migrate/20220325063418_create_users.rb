class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :social_kakao_identifier
      t.string :name
      t.string :password_hash
      t.boolean :is_email_verified

      t.timestamps
    end
  end
end
