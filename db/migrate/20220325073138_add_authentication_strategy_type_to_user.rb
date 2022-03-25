class AddAuthenticationStrategyTypeToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :authentication_strategy_type, :integer
  end
end
