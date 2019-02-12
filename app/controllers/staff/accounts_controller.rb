module Staff
  class AccountsController < ApplicationController
    # skip_before_action :select_account

    def index
      @accounts = Account.all
    end

    private

    def select_account
      # redirect_to account_selection_index_path if logged_in? && session[:account_id].nil?
      redirect_to account_selection_index_path
    end
  end
end