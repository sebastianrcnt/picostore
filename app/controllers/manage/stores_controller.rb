class Manage::StoresController < ApplicationController
  include AuthHelper
  layout "manage"
  
  def my
    @user = get_current_user
    if @user
      @store = Store.where(owner: @user)
    end
  end

  def edit
  end
end
