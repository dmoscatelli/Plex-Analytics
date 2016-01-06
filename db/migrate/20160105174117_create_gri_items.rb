class CreateGriItems < ActiveRecord::Migration
  def change
    create_table :gri_items do |t|
      t.string :number
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
