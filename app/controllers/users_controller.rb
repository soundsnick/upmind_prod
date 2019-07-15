class UsersController < ApplicationController
  def profile
    @title = text('account', 'account_title')
  end
end
