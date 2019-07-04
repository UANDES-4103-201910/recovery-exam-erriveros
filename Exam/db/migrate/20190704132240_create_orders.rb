class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.decimal :total
      t.string :payment_method
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
