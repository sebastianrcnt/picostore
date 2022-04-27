class Manage::ProductsController < ApplicationController
    include AuthHelper

    # 내가 소유한 첫번째 스토어의 
    def index
        @user = get_current_user
        @my_store = Store.where(owner: @user).first # TODO: store 여러 개일 때에는 수정 필요
        @my_store_products = Product.where(store:  @my_store)
    end
end
