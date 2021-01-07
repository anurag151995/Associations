class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.integer :plan_id
      t.integer :user_id

      t.timestamps
    end
  end
end
