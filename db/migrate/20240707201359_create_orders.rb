class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :total_price
      t.string :status
      t.decimal :GST
      t.decimal :PST
      t.decimal :HST

      t.timestamps
    end
  end
end
