class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :payer
      t.integer :points
      t.date :timestamp


      (payer: params["payer"], points: params["points"], timestamp: params["timestamp"])

      t.timestamps
    end
  end
end
