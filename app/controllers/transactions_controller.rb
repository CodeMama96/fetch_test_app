class TransactionsController < ApplicationController

    
    def index
        @transactions = Transaction.all

        render '/transactions/all'
    end

    def show 

        @transaction = Transaction.find_by(id: params[:id])

    end

    def create
        @transaction = Transaction.new(payer: params["payer"], points: params["points"], timestamp: params["timestamp"])
      
    end

    def edit
      @transaction = Transaction.new(payer: params["payer"], points: params["points"], timestamp: params["timestamp"])
      render '/transactions/edit'
    end
end