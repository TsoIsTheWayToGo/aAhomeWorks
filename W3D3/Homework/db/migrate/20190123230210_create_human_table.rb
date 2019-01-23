class CreateHumanTable < ActiveRecord::Migration[5.2]
  def change
    create_table :human do |t|
      t.string :name , null: false
      t.string :house_id , null: false
      t.timestamps
    end
  end
end
