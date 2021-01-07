class CreateComment1s < ActiveRecord::Migration[6.0]
  def change
    create_table :comment1s do |t|
      t.string :name

      t.timestamps
    end
  end
end
