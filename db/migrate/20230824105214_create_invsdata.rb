class CreateInvsdata < ActiveRecord::Migration[7.0]
  def change
    create_table :invsdata do |t|
      t.string :original_string
      t.string :inverse_string

      t.timestamps
    end
  end
end
