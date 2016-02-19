class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :payment_type
      t.integer :credit_card_number
      t.string :email
      t.string :address
      t.string :billing_address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
