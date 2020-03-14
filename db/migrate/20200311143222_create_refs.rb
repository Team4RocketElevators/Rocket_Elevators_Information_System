class CreateRefs < ActiveRecord::Migration[5.2]
  def change
    create_table :refs do |t|
      t.string :column

      t.timestamps
    end
  end
end
