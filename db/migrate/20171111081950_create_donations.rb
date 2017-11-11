class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.bigint :donation_amount
      t.bigint :vote

      t.timestamps
    end
  end
end