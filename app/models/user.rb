require 'bcrypt'

class User < ApplicationRecord
    include BCrypt
    after_initialize :default_values
    validates :email, presence: true, uniqueness: true
    validates :name, presence: true

    enum authentication_strategy_type: {
      email_and_password: 0,
      kakao: 1
    }

    has_many :stores, foreign_key: "store_id", inverse_of: :owner, class_name: "Store"
    has_many :membership_subscriptions, foreign_key: "subscriber_id", class_name: "MembershipSubscription", inverse_of: :subscriber
    has_many :payouts
    has_many :product_orders, foreign_key: "orderer_id", class_name: "ProductOrder", inverse_of: :orderer

    def password
      @password ||= Password.new(password_hash)
    end
  
    def password=(new_password)
      @password = Password.create(new_password)
      self.password_hash = @password
    end

    private
    def default_values
      self.is_email_verified ||= false
    end
end
