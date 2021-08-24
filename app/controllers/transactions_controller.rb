class TransactionsController < ApplicationController

    
    def index
        @transactions = Transaction.all

        render '/transactions/all'
    end

    def show 

        @transaction = Transaction.find_by(id: params[:id])
    end
end