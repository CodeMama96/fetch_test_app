class TransactionsController < ApplicationController

    
    def index
        @transactions = Transaction.all

        render '/transactions/all'
    end

    def show 

        @transaction = Transaction.find_by(id: params[:id])

    end

    def new

        @result = Transaction.send(params[:operation], *[params[:a], params[:b]])
        render :index
    end

    def create
        @transaction = Transaction.new(payer: params["payer"], points: params["points"], timestamp: params["timestamp"])
      
    end

    def edit
      @transaction = Transaction.new
      @transaction.save
      render '/transactions/all'
    end
end