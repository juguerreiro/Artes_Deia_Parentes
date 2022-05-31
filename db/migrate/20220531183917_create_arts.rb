class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|
      t.string :name
      t.string :type
      t.integer :price
      t.string :description
      t.boolean :is_avaiable
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
