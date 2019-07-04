class CreateDeliveryInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_infos do |t|
      t.string :line1
      t.string :line2
      t.string :phone

      t.timestamps
    end
  end
end
