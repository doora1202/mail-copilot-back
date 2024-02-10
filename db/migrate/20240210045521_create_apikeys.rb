class CreateApikeys < ActiveRecord::Migration[7.0]
  def change
    create_table :apikeys do |t|
      t.string :key

      t.timestamps
    end
  end
end
