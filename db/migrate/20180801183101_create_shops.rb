class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :host
      t.string :name
      t.string :token

      t.timestamps
    end
  end
end
