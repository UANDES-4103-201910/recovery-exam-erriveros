class ChangePhoneTypeInDeliveryInfo < ActiveRecord::Migration[5.2]
  def change
    change_column :delivery_infos, :phone, :integer

  end
end
